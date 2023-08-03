import 'package:fintess_prodigy/main.dart';
import 'package:flutter/material.dart';

class MotivationQuotes extends StatelessWidget {
  const MotivationQuotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const ImageIcon(
        AssetImage(
          'images/motivation.png',
        ),
      ),
      label: const Text(
        'MOTIVATION QUOTES',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const MotivationQuotesPage(),
          ),
        );
      },
    );
  }
}
