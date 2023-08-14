import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/stopwatch/stopwatch_page.dart';
import 'package:flutter/material.dart';

class FitStopwatch extends StatelessWidget {
  const FitStopwatch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.watch_rounded),
      label: const Text(
        'STOPWATCH',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) =>
                FitStopwatchPage(user: FirebaseAuth.instance.currentUser!),
          ),
        );
      },
    );
  }
}
