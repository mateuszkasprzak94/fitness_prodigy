import 'package:flutter/material.dart';

Widget customExerciseButton({
  required String title,
  required VoidCallback onPressed,
  required String image,
}) {
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
        onPressed: onPressed,
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
              image,
              width: 100,
              height: 100,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
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
