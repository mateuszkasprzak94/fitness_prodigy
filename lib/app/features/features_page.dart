import 'package:fitness_prodigy/app/features/diet/diet_button.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/exercise_examples_button.dart';
import 'package:fitness_prodigy/app/features/goals/goals_button.dart';
import 'package:fitness_prodigy/app/features/motivation_quotes/motivation_quotes_button.dart';
import 'package:fitness_prodigy/app/features/progress_tracking/progress_tracking_button.dart';
import 'package:fitness_prodigy/app/features/social_sharing/social_sharing_button.dart';
import 'package:fitness_prodigy/app/features/stopwatch/stopwatch_button.dart';
import 'package:fitness_prodigy/app/features/supplements/supplements_button.dart';
import 'package:fitness_prodigy/app/features/water_glass_counter/water_glass_counter_button.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AfterLogin extends StatelessWidget {
  const AfterLogin({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jesteś zalogowany jako ${user.email}'),
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
          ],
        ),
      ),
    );
  }
}
