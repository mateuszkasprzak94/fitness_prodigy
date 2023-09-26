import 'package:fitness_prodigy/app/pages/exercies_examples/muscle_anatomy/text_for_muscle_anatomy/text_for_muscle_anatomy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ChestPage extends StatelessWidget {
  const ChestPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text(
          'Forge Your Pectoral Power',
          style: GoogleFonts.lancelot(
              fontSize: 29, color: Colors.black, fontWeight: FontWeight.bold),
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
            startchest,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Flat Bench Press:', chest1),
          const SizedBox(height: 15),
          _buildExercise('2. Incline Bench Press:', chest2),
          const SizedBox(height: 15),
          _buildExercise('3. Decline Bench Press:', chest3),
          const SizedBox(height: 15),
          _buildExercise('4. Cable Crossover:', chest4),
          const SizedBox(height: 15),
          _buildExercise('5. Chest Dip:', chest5),
          const SizedBox(height: 15),
          _buildExercise('6. Dumbbell Pull-Over:', chest6),
          const SizedBox(height: 15),
          _buildExercise('7. Machine Fly:', chest7),
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
