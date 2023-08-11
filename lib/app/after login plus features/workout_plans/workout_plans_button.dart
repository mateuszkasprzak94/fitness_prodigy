import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/workout_plans_page.dart';
import 'package:flutter/material.dart';

class WorkoutPlans extends StatelessWidget {
  const WorkoutPlans({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.fitness_center),
      label: const Text(
        'WORKOUT PLANS',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) =>
                WorkoutPlansPage(user: FirebaseAuth.instance.currentUser!),
          ),
        );
      },
    );
  }
}
