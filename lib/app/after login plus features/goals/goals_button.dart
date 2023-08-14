import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/goals/goals_page.dart';
import 'package:flutter/material.dart';

class Goals extends StatelessWidget {
  const Goals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const ImageIcon(
        AssetImage(
          'images/goals.png',
        ),
      ),
      label: const Text(
        'GOALS',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => GoalsPage(user: FirebaseAuth.instance.currentUser!),
          ),
        );
      },
    );
  }
}
