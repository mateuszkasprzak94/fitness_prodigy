import 'package:fitness_prodigy/app/pages/exercies_examples/muscle_anatomy/text_for_muscle_anatomy/text_for_muscle_anatomy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BicepsPage extends StatelessWidget {
  const BicepsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crafting Strength and Definition',
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
        titleSpacing: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            startbiceps,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Barbell Curls:', biceps1),
          const Image(
              image: AssetImage(
                  'assets_exercise_examples/biceps_barbell_curl.jpg')),
          const SizedBox(height: 15),
          _buildExercise('2. Bar Cable Curls:', biceps2),
          const SizedBox(height: 15),
          _buildExercise('3. EZ Bar Preacher Curls:', biceps3),
          const Image(
              image: AssetImage(
                  'assets_exercise_examples/biceps_preacher_ez.jpg')),
          const SizedBox(height: 15),
          _buildExercise('4. Incline Dumbbell Curls:', biceps4),
          const SizedBox(height: 15),
          _buildExercise('5. One-arm Dumbbell Preacher Curls:', biceps5),
          const Image(
              image: AssetImage('assets_exercise_examples/biceps_one_arm.jpg')),
          const SizedBox(height: 15),
          _buildExercise('6. Reverse Barbell Curls:', biceps6),
          const Image(
              image: AssetImage(
                  'assets_exercise_examples/biceps_reverse_curl.jpg')),
          const SizedBox(height: 15),
          _buildExercise('7. Seated Dumbbell Curls:', biceps7),
          const Image(
              image: AssetImage(
                  'assets_exercise_examples/biceps_seated_curl.jpg')),
          const SizedBox(height: 15),
          _buildExercise('8. Standing Biceps Cable Curl:', biceps8),
          const Image(
              image:
                  AssetImage('assets_exercise_examples/biceps_cable_curl.jpg')),
          const SizedBox(height: 15),
          _buildExercise('9. Preacher Curl:', biceps9),
          const Image(
              image: AssetImage(
                  'assets_exercise_examples/biceps_preacher_curl.jpg')),
          const SizedBox(height: 15),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          Text(
            endbiceps,
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
