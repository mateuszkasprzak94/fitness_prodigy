import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/diet/diet_page.dart';
import 'package:flutter/material.dart';

class Diet extends StatelessWidget {
  const Diet({
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
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.bottomRight, end: Alignment.topLeft),
        ),
        child: ElevatedButton.icon(
          icon: const Icon(
            Icons.fastfood,
            color: Colors.black,
          ),
          label: const Text(
            'DIET',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    DietPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
        ),
      ),
    );
  }
}
