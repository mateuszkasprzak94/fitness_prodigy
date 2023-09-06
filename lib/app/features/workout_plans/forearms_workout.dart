import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/features/workout_plans/text_for_workout_plans/text_for_workouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ForearmsWorkout extends StatelessWidget {
  const ForearmsWorkout({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forearms Workout',
          style: GoogleFonts.satisfy(fontSize: 30, color: Colors.black),
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
            startforearms,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          const Text(
            'Forearms-Focused Workout: Building Strong Forearms',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmupforearms),
          const SizedBox(height: 15),
          _buildExercise('Exercise 1: Wrist Roller', forearms1),
          const SizedBox(height: 15),
          _buildExercise(
              'Exercise 2: Behind-the-Back Barbell Wrist Curl', forearms2),
          const SizedBox(height: 15),
          _buildExercise('Exercise 3: Plate Pinch', forearms3),
          const SizedBox(height: 15),
          _buildExercise('Exercise 4: Fat Grip Biceps Curl', forearms4),
          const SizedBox(height: 15),
          _buildExercise('Exercise 5: Zottman Curl', forearms5),
          const SizedBox(height: 15),
          _buildExercise('Exercise 6: Farmer’s Carry', forearms6),
          const SizedBox(height: 15),
          _buildExercise('Exercise 7: Bar Hang', forearms7),
          const SizedBox(height: 15),
          _buildExercise('Cool-Down:', cooldownforearms),
          const SizedBox(height: 15),
          Text(
            endforearms,
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
