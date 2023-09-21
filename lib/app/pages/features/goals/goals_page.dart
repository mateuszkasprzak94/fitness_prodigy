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
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Goals',
          style: GoogleFonts.satisfy(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: true,
      ),
      body: BlocProvider(
        create: (context) => GoalsCubit()..start(),
        child: BlocBuilder<GoalsCubit, GoalsState>(
          builder: (context, state) {
            final goalModels = state.items;
            if (state.errorMessage.isNotEmpty) {
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
              floatingActionButton: const FloatingButton(),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    for (final goalModel in goalModels) ...[
                      Dismissible(
                        key: ValueKey(goalModel.id),
                        direction: DismissDirection.endToStart,
                        onDismissed: (_) {
                          final deletedGoal = goalModel.title;
                          final documentID = goalModel.id;
                          final originalTimestamp = goalModel.timestamp;

                          context.read<GoalsCubit>().delete(documentID);

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Goal "$deletedGoal" deleted'),
                              action: SnackBarAction(
                                label: 'Undo',
                                onPressed: () {
                                  context
                                      .read<GoalsCubit>()
                                      .undo(deletedGoal, originalTimestamp);
                                },
                              ),
                            ),
                          );
                        },
                        background: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Icon(Icons.delete, color: Colors.black),
                        ),
                        child: GoalTextWidget(
                          goalModel.title,
                        ),
                      ),
                    ],
                    TextField(
                      controller: controller,
                      decoration: const InputDecoration(
                        hintText: 'Enter a new goal',
                      ),
                    )
                  ],
                ),
              ),
            );
          },
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
          colors: [Colors.black, Colors.grey],
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
            // final userID = FirebaseAuth.instance.currentUser?.uid;
            // if (userID == null) {
            //   throw Exception('User is not logged in');
            // }
            context.read<GoalsCubit>().add(controller.text);
            // FirebaseFirestore.instance
            //     .collection('users')
            //     .doc(userID)
            //     .collection('goals')
            //     .add(
            //   {
            //     'title': controller.text,
            //     'timestamp': FieldValue.serverTimestamp(),
            //   },
            // );
            controller.clear();
          }
        },
        child: const Icon(
          Icons.add,
          color: Colors.amber,
        ),
      ),
    );
  }
}

class GoalTextWidget extends StatelessWidget {
  const GoalTextWidget(
    this.title, {
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Icon(
            Icons.delete,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
