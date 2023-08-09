import 'package:fitness_prodigy/app/features/exercies_examples/exercies_examples_page.dart';
import 'package:flutter/material.dart';

class ExerciseExamples extends StatelessWidget {
  const ExerciseExamples({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.accessibility),
      label: const Text(
        'EXERCISE EXAMPLES',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const ExerciseExamplesPage(),
          ),
        );
      },
    );
  }
}