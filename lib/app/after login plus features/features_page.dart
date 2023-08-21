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
import 'package:fitness_prodigy/app/after%20login%20plus%20features/user_profile/user_profile_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/water_glass_counter/water_glass_counter_button.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/workout_plans_button.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/workout_plans_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Text(
          '# Fitness Prodigy',
          style: GoogleFonts.lobster(
              fontSize: 40, color: const Color.fromARGB(230, 33, 149, 243)),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.orange],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: const [
            Image(
              image: AssetImage('images/step4m.png'),
              fit: BoxFit.cover,
            ),
            SizedBox(height: 15),
            ExerciseExamples(),
            SizedBox(height: 5),
            WorkoutPlans(),
            SizedBox(height: 5),
            Diet(),
            SizedBox(height: 5),
            Supplements(),
            SizedBox(height: 5),
            Goals(),
            SizedBox(height: 5),
            MotivationQuotes(),
            SizedBox(height: 5),
            WaterGlassCounter(),
            SizedBox(height: 5),
            FitStopwatch(),
            SizedBox(height: 5),
            ProgressTracking(),
            SizedBox(height: 5),
            SocialSharing(),
            SizedBox(height: 5),
            UserProfile(),
            SizedBox(height: 5),
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
                builder: (_) => UserProfilePage(user: widget.user),
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
