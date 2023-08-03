import 'package:fintess_prodigy/main.dart';
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
            builder: (_) => const GoalsPage(),
          ),
        );
      },
    );
  }
}
