import 'package:flutter/material.dart';

// BUTTONS FOR SUPPLEMENTS PAGE

Widget customButtonExpansionTile({
  required String text,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      //deactivate color and shadow
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      shadowColor: Colors.transparent,
      elevation: 0,
    ),
    onPressed: onPressed,
    child: Text(text),
  );
}

Widget customSupplementsButton({
  required String text,
  required VoidCallback onPressed,
}) {
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
        ], begin: Alignment.centerRight, end: Alignment.centerLeft),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          //deactivate color and shadow
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(text, style: const TextStyle(color: Colors.black)),
      ),
    ),
  );
}
