import 'package:fitness_prodigy/app/pages/exercies_examples/muscle_anatomy/text_for_muscle_anatomy/text_for_muscle_anatomy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BackPage extends StatelessWidget {
  const BackPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Unlock Your Back's Full Potential",
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
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text(
                    startback,
                    style: const TextStyle(fontWeight: FontWeight.w400),
                  ),
                  const Divider(
                    height: 10,
                    thickness: 5,
                  ),
                  const SizedBox(height: 15),
                  _buildExercise('1. Deadlift:', back1),
                  const Image(
                      image: AssetImage(
                          'assets_exercise_examples/back_deadlift.jpg')),
                  const SizedBox(height: 15),
                  _buildExercise('2. Bent-Over Row:', back2),
                  const Image(
                      image:
                          AssetImage('assets_exercise_examples/back_row.jpg')),
                  const SizedBox(height: 15),
                  _buildExercise('3. Pull-Up:', back3),
                  const Image(
                      image:
                          AssetImage('assets_exercise_examples/back_pull.jpg')),
                  const SizedBox(height: 15),
                  _buildExercise('4. T-Bar Row:', back4),
                  const SizedBox(height: 15),
                  _buildExercise('5. Seated Row:', back5),
                  const Image(
                      image: AssetImage(
                          'assets_exercise_examples/back_seated.jpg')),
                  const SizedBox(height: 15),
                  _buildExercise('6. Single-Arm Smith Machine Row:', back6),
                  const SizedBox(height: 15),
                  _buildExercise('7. Lat Pull-Down:', back7),
                  const Image(
                      image:
                          AssetImage('assets_exercise_examples/back_lat.jpg')),
                  const SizedBox(height: 15),
                  _buildExercise('8. Single-Arm Dumbbell Row:', back8),
                  const Image(
                      image: AssetImage(
                          'assets_exercise_examples/back_single_arm.jpg')),
                  const SizedBox(height: 15),
                  const Divider(
                    height: 10,
                    thickness: 5,
                  ),
                  Text(
                    endback,
                    style: const TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
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
}
