import 'package:fintess_prodigy/main.dart';
import 'package:flutter/material.dart';

class ProgressTracking extends StatelessWidget {
  const ProgressTracking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.hourglass_bottom),
      label: const Text(
        'PROGRESS TRACKING',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const ProgressTrackingPage(),
          ),
        );
      },
    );
  }
}
