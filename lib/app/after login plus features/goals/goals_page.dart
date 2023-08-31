import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/exercies_examples/exercies_examples_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/features_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/user_profile/user_profile_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/workout_plans_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      ),
      floatingActionButton: const FloatingButton(),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('goals').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('An unexpected problem has occurred');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text('Please wait, data loading in progress');
            }

            final documents = snapshot.data!.docs;

            // Sort the documents based on creation timestamps
            documents.sort((a, b) {
              final aTimestamp = b['timestamp'] as Timestamp?;
              final bTimestamp = a['timestamp'] as Timestamp?;

              // Handle cases where timestamps are null
              if (aTimestamp == null || bTimestamp == null) {
                // Return 0 to indicate equal timestamps
                return 0;
              }

              return bTimestamp.compareTo(aTimestamp);
            });

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
                        FirebaseFirestore.instance
                            .collection('goals')
                            .doc(document.id)
                            .delete();

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Goal "$deletedGoal" deleted'),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {
                                FirebaseFirestore.instance
                                    .collection('goals')
                                    .add({
                                  'title': deletedGoal,
                                  'timestamp': FieldValue.serverTimestamp(),
                                });
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
          }),
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
