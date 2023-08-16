import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/exercies_examples/muscle_anatomy/back_page.dart';
import 'package:flutter/material.dart';

class Back extends StatelessWidget {
  const Back({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => BackPage(user: FirebaseAuth.instance.currentUser!),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(45, 3, 168, 244),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'exercise examples page images/back.png',
            width: 100,
            height: 100,
          ),
          const SizedBox(width: 10),
          const Text(
            'Back',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}