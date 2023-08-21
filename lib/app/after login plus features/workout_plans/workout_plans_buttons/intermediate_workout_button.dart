import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/intermediate_workout.dart';
import 'package:flutter/material.dart';

class IntermediateWorkoutButton extends StatelessWidget {
  const IntermediateWorkoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) =>
                IntermediateWorkout(user: FirebaseAuth.instance.currentUser!),
          ),
        );
      },
      child: const Text('Intermediate Workout'),
    );
  }
}
