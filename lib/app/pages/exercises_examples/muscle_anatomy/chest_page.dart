import 'package:fitness_prodigy/app/pages/exercises_examples/muscle_anatomy/text_for_muscle_anatomy/text_for_muscle_anatomy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ChestPage extends StatelessWidget {
  const ChestPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text(
          'Forge Your Pectoral Power',
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
            startchest,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Flat Bench Press:', chest1),
          const Image(
              image:
                  AssetImage('assets/assets_exercise_examples/chest_flat.jpg')),
          const SizedBox(height: 15),
          _buildExercise('2. Incline Bench Press:', chest2),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/chest_incline.jpg')),
          const SizedBox(height: 15),
          _buildExercise('3. Decline Bench Press:', chest3),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/chest_decline.jpg')),
          const SizedBox(height: 15),
          _buildExercise('4. Cable Crossover:', chest4),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/chest_cable.jpg')),
          const SizedBox(height: 15),
          _buildExercise('5. Chest Dip:', chest5),
          const Image(
              image:
                  AssetImage('assets/assets_exercise_examples/chest_dip.jpg')),
          const SizedBox(height: 15),
          _buildExercise('6. Dumbbell Pull-Over:', chest6),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/chest_dumbbel.jpg')),
          const SizedBox(height: 15),
          _buildExercise('7. Machine Fly:', chest7),
          const Image(
              image: AssetImage(
                  'assets/assets_exercise_examples/chest_machine.jpg')),
          const SizedBox(height: 15),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          Text(
            endchest,
            style: const TextStyle(fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}

_buildExercise(String title, String description) {
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
