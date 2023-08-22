import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/advanced_workout.dart';
import 'package:flutter/material.dart';

class AdvancedWorkoutButton extends StatelessWidget {
  const AdvancedWorkoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();
    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    AdvancedWorkout(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
          child: const Text(
            'Advanced Workout',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
