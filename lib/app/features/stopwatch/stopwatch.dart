import 'package:flutter/material.dart';

class StopwatchPage extends StatelessWidget {
  const StopwatchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stopwatch',
        ),
      ),
    );
  }
}
