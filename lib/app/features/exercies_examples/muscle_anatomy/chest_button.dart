import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/chest_page.dart';
import 'package:flutter/material.dart';

class Chest extends StatelessWidget {
  const Chest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
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
                builder: (_) =>
                    ChestPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),

            /// deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'exercise examples page images/chest.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 10),
              const Text(
                'Chest',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}