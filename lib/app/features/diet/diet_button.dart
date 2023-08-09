import 'package:fitness_prodigy/app/features/diet/diet.dart';
import 'package:flutter/material.dart';

class Diet extends StatelessWidget {
  const Diet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.fastfood),
      label: const Text(
        'DIET',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const DietPage(),
          ),
        );
      },
    );
  }
}
