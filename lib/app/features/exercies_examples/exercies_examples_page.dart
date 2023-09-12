import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/abs_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/back_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/biceps_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/chest_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/forearms_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/legs_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/shoulders_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/triceps_page.dart';
import 'package:fitness_prodigy/app/features/features_page.dart';
import 'package:fitness_prodigy/app/features/user_profile/user_profile_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_page.dart';
import 'package:fitness_prodigy/app/models/exercise_examples_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseExamplesPage extends StatefulWidget {
  const ExerciseExamplesPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<ExerciseExamplesPage> createState() => _ExerciseExamplesPageState();
}

class _ExerciseExamplesPageState extends State<ExerciseExamplesPage> {
  var currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Exercise Examples',
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              customExerciseButton(
                  title: 'Chest',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) =>
                            ChestPage(user: FirebaseAuth.instance.currentUser!),
                      ),
                    );
                  },
                  image: 'exercise examples page images/chest.png'),
              const SizedBox(height: 10),
              customExerciseButton(
                  title: 'Back',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) =>
                            BackPage(user: FirebaseAuth.instance.currentUser!),
                      ),
                    );
                  },
                  image: 'exercise examples page images/back.png'),
              const SizedBox(height: 10),
              customExerciseButton(
                  title: 'Shoulders',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ShouldersPage(
                            user: FirebaseAuth.instance.currentUser!),
                      ),
                    );
                  },
                  image: 'exercise examples page images/shoulders.png'),
              const SizedBox(height: 10),
              customExerciseButton(
                  title: 'Biceps',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => BicepsPage(
                            user: FirebaseAuth.instance.currentUser!),
                      ),
                    );
                  },
                  image: 'exercise examples page images/biceps.png'),
              const SizedBox(height: 10),
              customExerciseButton(
                  title: 'Triceps',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => TricepsPage(
                            user: FirebaseAuth.instance.currentUser!),
                      ),
                    );
                  },
                  image: 'exercise examples page images/triceps.png'),
              const SizedBox(height: 10),
              customExerciseButton(
                  title: 'Forearms',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ForearmsPage(
                            user: FirebaseAuth.instance.currentUser!),
                      ),
                    );
                  },
                  image: 'exercise examples page images/forearms.png'),
              const SizedBox(height: 10),
              customExerciseButton(
                  title: 'Legs',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) =>
                            LegsPage(user: FirebaseAuth.instance.currentUser!),
                      ),
                    );
                  },
                  image: 'exercise examples page images/legs.png'),
              const SizedBox(height: 10),
              customExerciseButton(
                  title: 'Abs',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) =>
                            AbsPage(user: FirebaseAuth.instance.currentUser!),
                      ),
                    );
                  },
                  image: 'exercise examples page images/abs.png'),
              const SizedBox(height: 10),
            ],
          ),
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
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: 'Exercises',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
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
