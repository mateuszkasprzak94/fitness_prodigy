import 'package:fitness_prodigy/app/after%20login%20plus%20features/diet/diet_button.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/exercies_examples/exercies_examples_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/exercies_examples/exercise_examples_button.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/goals/goals_button.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/motivation_quotes/motivation_quotes_button.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/progress_tracking/progress_tracking_button.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/social_sharing/social_sharing_button.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/stopwatch/stopwatch_button.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/supplements/supplements_button.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/user_profile/user_profile_button.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/water_glass_counter/water_glass_counter_button.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/workout_plans_button.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/workout_plans_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Features extends StatefulWidget {
  const Features({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logged as: ${widget.user.email}'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('images/Copy of Fitness Prodigy.png'),
              radius: 150,
            ),
            ExerciseExamples(),
            WorkoutPlans(),
            Diet(),
            Supplements(),
            Goals(),
            MotivationQuotes(),
            WaterGlassCounter(),
            FitStopwatch(),
            ProgressTracking(),
            SocialSharing(),
            UserProfile(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
          if (newIndex == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ExerciseExamplesPage(user: widget.user),
              ),
            );
          } else if (newIndex == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => WorkoutPlansPage(user: widget.user),
              ),
            );
          } else if (newIndex == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const UserProfile(),
              ),
            );
          }
        },
        selectedItemColor: Colors.blue,
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
