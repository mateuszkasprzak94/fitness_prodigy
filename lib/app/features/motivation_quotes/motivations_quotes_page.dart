import 'package:flutter/material.dart';

class MotivationQuotesPage extends StatelessWidget {
  const MotivationQuotesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Motivation Quotes',
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/Motivation page.png',
            ),
          ),
        ),
        child: Center(
            child: ListView(
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.all_inclusive),
              label: const Text(
                'Random Quote',
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              label: const Text(
                'Favorite Quote',
              ),
            ),
          ],
        )),
      ),
    );
  }
}