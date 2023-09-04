import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/exercies_examples/exercies_examples_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/features_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/goals/cubit/goals_cubit.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/user_profile/user_profile_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/workout_plans_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

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
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: const FloatingButton(),
      body: BlocProvider(
        create: (context) => GoalsCubit()..start(),
        child: BlocBuilder<GoalsCubit, GoalsState>(
          builder: (context, state) {
            if (state.errorMessage.isNotEmpty) {
              return const Text('An unexpected problem has occurred');
            }

            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final documents = state.documents;

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  for (final document in documents) ...[
                    Dismissible(
                      key: ValueKey(document.id),
                      direction: DismissDirection.startToEnd,
                      onDismissed: (_) {
                        final deletedGoal = document['title'] as String;
                        final documentId = document.id;

                        context.read<GoalsCubit>().delete(documentId);

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Goal "$deletedGoal" deleted'),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {
                                context.read<GoalsCubit>().undo(deletedGoal);
                              },
                            ),
                          ),
                        );
                      },
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      child: CategoryWidget(
                        document['title'],
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
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
          if (newIndex == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Features(
                  user: widget.user,
                ),
              ),
            );
          } else if (newIndex == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ExerciseExamplesPage(
                  user: widget.user,
                ),
              ),
            );
          } else if (newIndex == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => WorkoutPlansPage(
                  user: widget.user,
                ),
              ),
            );
          } else if (newIndex == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => UserProfilePage(user: widget.user),
              ),
            );
          }
        },
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Exercises',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Workouts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'User Profile',
          ),
        ],
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
            // context.read<GoalsCubit>().add();
            FirebaseFirestore.instance.collection('goals').add(
              {
                'title': controller.text,
                'timestamp': FieldValue.serverTimestamp(),
              },
            );
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

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
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
          Text(
            title,
            style: const TextStyle(color: Colors.white),
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
