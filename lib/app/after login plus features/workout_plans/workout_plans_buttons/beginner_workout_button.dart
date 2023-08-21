import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/beginner_workout.dart';
import 'package:flutter/material.dart';

class BeginnerWorkoutButton extends StatelessWidget {
  const BeginnerWorkoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) =>
                BeginnerWorkout(user: FirebaseAuth.instance.currentUser!),
          ),
        );
      },
      child: const Text('Beginner Workout'),
    );
  }
}
