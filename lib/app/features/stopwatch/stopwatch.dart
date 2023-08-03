import 'package:fintess_prodigy/main.dart';
import 'package:flutter/material.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({
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
            builder: (_) => const StopwatchPage(),
          ),
        );
      },
    );
  }
}
