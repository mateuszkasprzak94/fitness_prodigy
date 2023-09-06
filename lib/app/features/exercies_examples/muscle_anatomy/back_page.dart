import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/text_for_muscle_anatomy/text_for_muscle_anatomy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BackPage extends StatelessWidget {
  const BackPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Unlock Your Back's Full Potential",
          style: GoogleFonts.lancelot(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
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
                  const SizedBox(height: 15),
                  _buildExercise('2. Bent-Over Row:', back2),
                  const SizedBox(height: 15),
                  _buildExercise('3. Pull-Up:', back3),
                  const SizedBox(height: 15),
                  _buildExercise('4. T-Bar Row:', back4),
                  const SizedBox(height: 15),
                  _buildExercise('5. Seated Row:', back5),
                  const SizedBox(height: 15),
                  _buildExercise('6. Single-Arm Smith Machine Row:', back6),
                  const SizedBox(height: 15),
                  _buildExercise('7. Lat Pull-Down:', back7),
                  const SizedBox(height: 15),
                  _buildExercise('8. Single-Arm Dumbbell Row:', back8),
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
