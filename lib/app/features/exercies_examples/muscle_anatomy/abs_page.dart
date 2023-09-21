import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/text_for_muscle_anatomy/text_for_muscle_anatomy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AbsPage extends StatelessWidget {
  const AbsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sculpting Strong Core: Unveiling Abdominal Power',
          style: GoogleFonts.lancelot(
              fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold),
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
            startabs,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Cable Crunch:', abs1),
          const SizedBox(height: 15),
          _buildExercise('2. Machine Crunch:', abs2),
          const SizedBox(height: 15),
          _buildExercise('3. Landmine Twists:', abs3),
          const SizedBox(height: 15),
          _buildExercise('4. Cable Side Bend:', abs4),
          const SizedBox(height: 15),
          _buildExercise('5. Hanging Knee Raise:', abs5),
          const SizedBox(height: 15),
          _buildExercise('6. Hanging Straight Leg Raise:', abs6),
          const SizedBox(height: 15),
          _buildExercise('7. Hanging Windshield Wiper:', abs7),
          const SizedBox(height: 15),
          _buildExercise('8. Abs Wheel Rollout:', abs8),
          const SizedBox(height: 15),
          _buildExercise('9. Barbell Rollout:', abs9),
          const SizedBox(height: 15),
          _buildExercise('10. Pallof Press:', abs10),
          const SizedBox(height: 15),
          _buildExercise('11. Cable Wood Chop:', abs11),
          const SizedBox(height: 15),
          _buildExercise('12. Stability Ball Tuck:', abs12),
          const SizedBox(height: 15),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          Text(
            endabs,
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
