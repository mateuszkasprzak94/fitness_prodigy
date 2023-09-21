import 'package:fitness_prodigy/app/pages/workout_plans/text_for_workout_plans_pages/text_for_workouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BackWorkoutPage extends StatelessWidget {
  const BackWorkoutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Back Workout',
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
            startback,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          const Text(
            'Back Workout: Strengthening a Powerful Back',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmupback),
          const SizedBox(height: 15),
          _buildExercise('Exercise 1: Deadlift', back1),
          const SizedBox(height: 15),
          _buildExercise('Exercise 2: Bent-Over Row', back2),
          const SizedBox(height: 15),
          _buildExercise('Exercise 3: Pull-Ups', back3),
          const SizedBox(height: 15),
          _buildExercise('Exercise 4: T-Bar Row', back4),
          const SizedBox(height: 15),
          _buildExercise('Exercise 5: Seated Row', back5),
          const SizedBox(height: 15),
          _buildExercise('Exercise 6: Single-Arm Smith Machine Row', back6),
          const SizedBox(height: 15),
          _buildExercise('Exercise 7: Lat Pull-Down', back7),
          const SizedBox(height: 15),
          _buildExercise('Exercise 8: Single-Arm Dumbbell Row', back8),
          const SizedBox(height: 15),
          _buildExercise('Cool-Down:', cooldownback),
          const SizedBox(height: 15),
          Text(
            endback,
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
