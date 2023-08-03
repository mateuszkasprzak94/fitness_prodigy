import 'package:fintess_prodigy/main.dart';
import 'package:flutter/material.dart';

class Supplements extends StatelessWidget {
  const Supplements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.local_pharmacy),
      label: const Text(
        'SUPPLEMENTS',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const SupplementsPage(),
          ),
        );
      },
    );
  }
}
