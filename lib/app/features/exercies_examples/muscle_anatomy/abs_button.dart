import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/abs_page.dart';
import 'package:flutter/material.dart';

class Abs extends StatelessWidget {
  const Abs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Container(
      decoration: const ShapeDecoration(
        shape: shape,
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ],
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => AbsPage(user: FirebaseAuth.instance.currentUser!),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),

          ///deactivate color and shadow
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'exercise examples page images/abs.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(width: 10),
            const Text(
              'Abs',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}