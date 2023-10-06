import 'package:flutter/material.dart';

// BUTTON FOR EXERCISES PAGE

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
      margin: const EdgeInsets.all(8),
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

// BUTTON FOR WORKOUTPAGE

Widget customWorkoutButton({
  required String title,
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
        child: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    ),
  );
}

//BUTTON FOR FEATURES PAGE

Widget customFeaturesButton({
  required String title,
  required VoidCallback onPressed,
  required IconData icon,
}) {
  const shape = StadiumBorder();
  return Material(
    color: Colors.transparent,
    shape: shape,
    elevation: 8,
    child: Container(
      margin: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        shape: shape,
        gradient: LinearGradient(colors: [
          Colors.yellow.shade500,
          Colors.orange.shade400,
          Colors.grey,
          Colors.black,
        ], begin: Alignment.bottomRight, end: Alignment.topLeft),
      ),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.black,
        ),
        label: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          //deactivate color and shadow
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: onPressed,
      ),
    ),
  );
}

Widget customFeaturesButtonWithImage({
  required String title,
  required VoidCallback onPressed,
  required String assetImage,
}) {
  const shape = StadiumBorder();

  return Material(
    color: Colors.transparent,
    shape: shape,
    elevation: 8,
    child: Container(
      margin: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        shape: shape,
        gradient: LinearGradient(colors: [
          Colors.yellow.shade500,
          Colors.orange.shade400,
          Colors.grey,
          Colors.black,
        ], begin: Alignment.centerRight, end: Alignment.centerLeft),
      ),
      child: ElevatedButton.icon(
        icon: ImageIcon(
          AssetImage(
            assetImage,
          ),
          color: Colors.black,
        ),
        label: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          //deactivate color and shadow
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: onPressed,
      ),
    ),
  );
}
