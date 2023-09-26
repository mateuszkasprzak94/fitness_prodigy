import 'package:fitness_prodigy/app/pages/exercies_examples/muscle_anatomy/text_for_muscle_anatomy/text_for_muscle_anatomy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TricepsPage extends StatelessWidget {
  const TricepsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sculpting Powerful Triceps',
          style: GoogleFonts.lancelot(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
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
        titleSpacing: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            starttriceps,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Bench Dips:', triceps1),
          const SizedBox(height: 15),
          _buildExercise('2. Dumbbell Triceps Extension:', triceps2),
          const SizedBox(height: 15),
          _buildExercise('3. Push Ups:', triceps3),
          const SizedBox(height: 15),
          _buildExercise('4. Reverse Grip Bench Press:', triceps4),
          const SizedBox(height: 15),
          _buildExercise('5. Reverse Grip Triceps Pushdown:', triceps5),
          const SizedBox(height: 15),
          _buildExercise('6. Skull Crushers:', triceps6),
          const SizedBox(height: 15),
          _buildExercise('7. Tricep Rope Pushdown:', triceps7),
          const SizedBox(height: 15),
          _buildExercise('8. Tricep Press Machine:', triceps8),
          const SizedBox(height: 15),
          _buildExercise('9. Close-Grip Bench Press:', triceps9),
          const SizedBox(height: 15),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          Text(
            endtriceps,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
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
          fontSize: 17,
        ),
      ),
      Text(
        description,
        style: const TextStyle(
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          fontSize: 12,
        ),
      ),
    ],
  );
}
