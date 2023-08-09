import 'package:fitness_prodigy/app/after%20login%20plus%20features/motivation_quotes/motivations_quotes_page.dart';
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
