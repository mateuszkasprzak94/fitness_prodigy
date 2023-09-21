import 'package:fitness_prodigy/app/pages/workout_plans/text_for_workout_plans_pages/text_for_workouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ChestWorkoutPage extends StatelessWidget {
  const ChestWorkoutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chest Workout',
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
            startchest,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          const Text(
            'Chest Workout: Sculpting Strong Pectorals',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmupchest),
          const SizedBox(height: 15),
          _buildExercise('Exercise 1: Flat Bench Press', chest1),
          const SizedBox(height: 15),
          _buildExercise('Exercise 2: Incline Bench Press', chest2),
          const SizedBox(height: 15),
          _buildExercise('Exercise 3: Decline Bench Press', chest3),
          const SizedBox(height: 15),
          _buildExercise('Exercise 4: Cable Crossover', chest4),
          const SizedBox(height: 15),
          _buildExercise('Exercise 5: Chest Dips', chest5),
          const SizedBox(height: 15),
          _buildExercise('Exercise 6: Dumbbell Pull-Over', chest6),
          const SizedBox(height: 15),
          _buildExercise('Cool-Down:', cooldownchest),
          const SizedBox(height: 15),
          Text(
            endchest,
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
