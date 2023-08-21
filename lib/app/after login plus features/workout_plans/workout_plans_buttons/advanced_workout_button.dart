import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/advanced_workout.dart';
import 'package:flutter/material.dart';

class AdvancedWorkoutButton extends StatelessWidget {
  const AdvancedWorkoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) =>
                AdvancedWorkout(user: FirebaseAuth.instance.currentUser!),
          ),
        );
      },
      child: const Text('Advanced Workout'),
    );
  }
}
