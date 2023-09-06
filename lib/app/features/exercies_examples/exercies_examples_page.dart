import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/abs_button.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/back_button.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/biceps_button.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/chest_button.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/forearms_button.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/legs_button.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/shoulders_button.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/triceps_button.dart';
import 'package:fitness_prodigy/app/features/features_page.dart';
import 'package:fitness_prodigy/app/features/user_profile/user_profile_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_page.dart';
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
            children: const [
              Chest(),
              SizedBox(height: 10),
              Back(),
              SizedBox(height: 10),
              Shoulders(),
              SizedBox(height: 10),
              Biceps(),
              SizedBox(height: 10),
              Triceps(),
              SizedBox(height: 10),
              Forearms(),
              SizedBox(height: 10),
              Legs(),
              SizedBox(height: 10),
              Abs(),
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