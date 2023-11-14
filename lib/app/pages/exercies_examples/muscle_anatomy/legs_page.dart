import 'package:fitness_prodigy/app/pages/exercies_examples/muscle_anatomy/text_for_muscle_anatomy/text_for_muscle_anatomy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LegsPage extends StatelessWidget {
  const LegsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forging Powerful Lower Body',
          style: GoogleFonts.lancelot(
              fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
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
            startlegs,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Squats:', legs1),
          const Image(
              image:
                  AssetImage('assets/assets_exercise_examples/legs_squad.jpg')),
          const SizedBox(height: 15),
          _buildExercise('2. Dumbbell Walking Lunge:', legs2),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/legs_walking.jpg')),
          const SizedBox(height: 15),
          _buildExercise('3. Leg Press:', legs3),
          const Image(
              image:
                  AssetImage('assets/assets_exercise_examples/legs_press.jpg')),
          const SizedBox(height: 15),
          _buildExercise('4. Bulgarian Split Squats:', legs4),
          const SizedBox(height: 15),
          _buildExercise('5. Calf Raises:', legs5),
          const Image(
              image:
                  AssetImage('assets/assets_exercise_examples/legs_calfs.jpg')),
          const SizedBox(height: 15),
          _buildExercise('6. Leg Extensions:', legs6),
          const SizedBox(height: 15),
          _buildExercise('7. Romanian Deadlift:', legs7),
          const SizedBox(height: 15),
          _buildExercise('8. Goblet Squat:', legs8),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/legs_goblet.jpg')),
          const SizedBox(height: 15),
          _buildExercise('9. Seated Leg Curl:', legs9),
          const SizedBox(height: 15),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          Text(
            endlegs,
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
