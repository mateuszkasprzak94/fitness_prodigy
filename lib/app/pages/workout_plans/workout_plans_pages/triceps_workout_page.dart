import 'package:fitness_prodigy/app/pages/workout_plans/text_for_workout_plans_pages/text_for_workouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TricepsWorkoutPage extends StatelessWidget {
  const TricepsWorkoutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Triceps Workout',
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
            starttriceps,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          const Text(
            'Triceps-Focused Workout: Sculpting Strong Triceps',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmuptriceps),
          const SizedBox(height: 15),
          _buildExercise('Exercise 1: Bench Dips', triceps1),
          const SizedBox(height: 15),
          _buildExercise('Exercise 2: Dumbbell Triceps Extension', triceps2),
          const SizedBox(height: 15),
          _buildExercise('Exercise 3: Push-Ups', triceps3),
          const SizedBox(height: 15),
          _buildExercise('Exercise 4: Reverse Grip Bench Press', triceps4),
          const SizedBox(height: 15),
          _buildExercise('Exercise 5: Reverse Grip Triceps Pushdown', triceps5),
          const SizedBox(height: 15),
          _buildExercise('Exercise 6: Skull Crushers', triceps6),
          const SizedBox(height: 15),
          _buildExercise('Exercise 7: Tricep Rope Pushdown', triceps7),
          const SizedBox(height: 15),
          _buildExercise('Exercise 8: Tricep Press Machine', triceps8),
          const SizedBox(height: 15),
          _buildExercise('Cool-Down:', cooldowntriceps),
          const SizedBox(height: 15),
          Text(
            endtriceps,
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
