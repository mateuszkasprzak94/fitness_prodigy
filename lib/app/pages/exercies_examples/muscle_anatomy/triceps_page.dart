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
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sculpting Powerful Triceps',
          style: GoogleFonts.lancelot(
              fontSize: screenWidth / 13,
              color: Colors.black,
              fontWeight: FontWeight.bold),
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
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/triceps_bench.jpg')),
          const SizedBox(height: 15),
          _buildExercise('2. Dumbbell Triceps Extension:', triceps2),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/triceps_dumbbell_extension.jpg')),
          const SizedBox(height: 15),
          _buildExercise('3. Push Ups:', triceps3),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/triceps_pushups.jpg')),
          const SizedBox(height: 15),
          _buildExercise('4. Reverse Grip Bench Press:', triceps4),
          const SizedBox(height: 15),
          _buildExercise('5. Reverse Grip Triceps Pushdown:', triceps5),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/triceps_reverse_pushdown.jpg')),
          const SizedBox(height: 15),
          _buildExercise('6. Skull Crushers:', triceps6),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/triceps_skull.jpg')),
          const SizedBox(height: 15),
          _buildExercise('7. Triceps Rope Pushdown:', triceps7),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/triceps_rope.jpg')),
          const SizedBox(height: 15),
          _buildExercise('8. Triceps Press Machine:', triceps8),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/triceps_press.jpg')),
          const SizedBox(height: 15),
          _buildExercise('9. Close-Grip Bench Press:', triceps9),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/triceps_close_grip.jpg')),
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
