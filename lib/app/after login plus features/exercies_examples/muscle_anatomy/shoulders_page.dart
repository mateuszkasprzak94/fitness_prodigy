import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/exercies_examples/muscle_anatomy/text_for_muscle_anatomy/text_for_muscle_anatomy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ShouldersPage extends StatelessWidget {
  const ShouldersPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crafting Broad and Impressive Shoulders',
          style: GoogleFonts.lancelot(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          maxLines: 2,
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            startshoulders,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Overhead Press:', shoulders1),
          const SizedBox(height: 15),
          _buildExercise('2. Seated Dumbbell Shoulder Press:', shoulders2),
          const SizedBox(height: 15),
          _buildExercise('3. Barbell Front Raise:', shoulders3),
          const SizedBox(height: 15),
          _buildExercise('4. Dumbbell Lateral Raise:', shoulders4),
          const SizedBox(height: 15),
          _buildExercise('5. Barbell Upright Row:', shoulder5),
          const SizedBox(height: 15),
          _buildExercise('6. Reverse Dumbbell Flyes:', shoulders6),
          const SizedBox(height: 15),
          _buildExercise('7. Face Pull:', shoulders7),
          const SizedBox(height: 15),
          _buildExercise('8. Barbell Rear Delt Row:', shoulders8),
          const SizedBox(height: 15),
          _buildExercise('9. Arnold Press:', shoulders9),
          const SizedBox(height: 15),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          Text(
            endshoulders,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

Widget _buildExercise(String title, String description) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 17),
      ),
      Text(
        description,
        style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            fontSize: 12),
      ),
    ],
  );
}
