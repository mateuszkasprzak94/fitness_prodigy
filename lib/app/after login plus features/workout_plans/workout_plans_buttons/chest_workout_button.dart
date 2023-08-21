import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/chest_workout.dart';
import 'package:flutter/material.dart';

class ChestWorkoutButton extends StatelessWidget {
  const ChestWorkoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) =>
                ChestWorkout(user: FirebaseAuth.instance.currentUser!),
          ),
        );
      },
      child: const Text('Chest'),
    );
  }
}
