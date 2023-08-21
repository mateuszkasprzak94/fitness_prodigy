import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/back_workout.dart';
import 'package:flutter/material.dart';

class BackWorkoutButton extends StatelessWidget {
  const BackWorkoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) =>
                BackWorkout(user: FirebaseAuth.instance.currentUser!),
          ),
        );
      },
      child: const Text('Back'),
    );
  }
}
