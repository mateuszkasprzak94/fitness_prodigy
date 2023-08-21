import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/biceps_workout.dart';
import 'package:flutter/material.dart';

class BicepsWorkoutButton extends StatelessWidget {
  const BicepsWorkoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) =>
                BicepsWorkout(user: FirebaseAuth.instance.currentUser!),
          ),
        );
      },
      child: const Text('Biceps'),
    );
  }
}
