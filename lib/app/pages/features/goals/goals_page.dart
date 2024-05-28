import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/injection_container.dart';
import 'package:fitness_prodigy/app/domain/models/goal_model.dart';
import 'package:fitness_prodigy/app/pages/features/goals/cubit/goals_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

final controller = TextEditingController();

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    controller.addListener(() => setState(() {}));

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Goals',
            style: GoogleFonts.lobster(
                fontSize: screenWidth * 0.11, color: Colors.black),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                const Color.fromARGB(164, 0, 0, 0),
                Colors.grey.shade300,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
          automaticallyImplyLeading: true,
        ),
        body: BlocProvider<GoalsCubit>(
          create: (context) => getIt()..start(),
          child: BlocBuilder<GoalsCubit, GoalsState>(
            builder: (context, state) {
              final goalModels = state.items;
              if (state.errorMessage != null &&
                  state.errorMessage!.isNotEmpty) {
                return Center(
                  child: Text(
                      'An unexpected problem has occurred: ${state.errorMessage}'),
                );
              }

              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return Scaffold(
                backgroundColor: Colors.grey.shade300,
                floatingActionButton: const FloatingButton(),
                body: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          labelText: 'Your Goal',
                          labelStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                          hintText: 'Enter a new goal',
                          hintStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: controller.text.isEmpty
                              ? const Icon(Icons.check)
                              : const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                          suffixIcon: controller.text.isEmpty
                              ? Container(width: 0)
                              : IconButton(
                                  onPressed: () => controller.clear(),
                                  icon: const Icon(Icons.close)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        style: GoogleFonts.roboto(
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        children: [
                          for (final goalModel in goalModels) ...[
                            Dismissible(
                              key: ValueKey(goalModel.id),
                              confirmDismiss: (direction) async {
                                // only from right to left
                                return direction == DismissDirection.endToStart;
                              },
                              onDismissed: (direction) {
                                final deletedGoal = goalModel.title;

                                context
                                    .read<GoalsCubit>()
                                    .delete(documentID: goalModel.id);

                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Goal "$deletedGoal" deleted'),
                                    action: SnackBarAction(
                                      label: 'Undo',
                                      onPressed: () {
                                        context.read<GoalsCubit>().undo(
                                            deletedGoal: goalModel.title,
                                            originalTimestamp:
                                                goalModel.timestamp);
                                      },
                                    ),
                                  ),
                                );
                              },
                              background: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    color: Colors.red,
                                  ),
                                  alignment: Alignment.center,
                                  child: const Icon(Icons.delete,
                                      color: Colors.black),
                                ),
                              ),
                              child: GoalTextWidget(
                                goalModel: goalModel,
                              ),
                            ),
                          ],
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        shape: StadiumBorder(),
        gradient: LinearGradient(
          colors: kHomeGradient,
        ),
      ),
      child: FloatingActionButton(
        // Deactivate color and shadow
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: const StadiumBorder(),
        onPressed: () {
          if (controller.text.isNotEmpty) {
            context.read<GoalsCubit>().add(controller.text);

            controller.clear();

            FocusScope.of(context).unfocus();
          }
        },
        child: const Icon(
          Icons.add,
          color: Colors.amber,
          shadows: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 1),
            ),
          ],
        ),
      ),
    );
  }
}

class GoalTextWidget extends StatelessWidget {
  const GoalTextWidget({Key? key, required this.goalModel}) : super(key: key);

  final GoalModel goalModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: kButtonGradient,
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(color: Colors.black, width: 1.5),
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              goalModel.title,
              style: TextStyle(
                color: Colors.amber.shade600,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
