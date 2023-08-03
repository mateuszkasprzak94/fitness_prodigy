import 'package:fintess_prodigy/app/features/diet/diet.dart';
import 'package:fintess_prodigy/app/features/exercies_examples/exercies_examples.dart';
import 'package:fintess_prodigy/app/features/goals/goals.dart';
import 'package:fintess_prodigy/app/features/motivation_quotes/motivations_quotes.dart';
import 'package:fintess_prodigy/app/features/progress_tracking/progress_tracking.dart';
import 'package:fintess_prodigy/app/features/social_sharing/social_sharing.dart';
import 'package:fintess_prodigy/app/features/water_glass_counter/water_glass_counter.dart';
import 'package:fintess_prodigy/app/features/workout_plans/workout_plans.dart';
import 'package:fintess_prodigy/app/features/stopwatch/stopwatch.dart';
import 'package:flutter/material.dart';

import 'supplements/supplements.dart';

class Features extends StatelessWidget {
  const Features({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Features:'),
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
            Stopwatch(),
            ProgressTracking(),
            SocialSharing(),
          ],
        ),
      ),
    );
  }
}
