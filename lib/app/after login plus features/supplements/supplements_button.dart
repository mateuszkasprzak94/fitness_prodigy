import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/supplements/supplements_page.dart';
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
            builder: (_) =>
                SupplementsPage(user: FirebaseAuth.instance.currentUser!),
          ),
        );
      },
    );
  }
}
