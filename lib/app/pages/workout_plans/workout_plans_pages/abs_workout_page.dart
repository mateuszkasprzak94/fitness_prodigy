import 'package:fitness_prodigy/app/pages/workout_plans/text_for_workout_plans_pages/text_for_workouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AbsWorkoutPage extends StatelessWidget {
  const AbsWorkoutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Abs Workout',
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
            startabs,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          const Text(
            'Abs-Focused Workout: Strengthening Your Core',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmupabs),
          const SizedBox(height: 15),
          _buildExercise('Exercise 1: Cable Crunch', abs1),
          const SizedBox(height: 15),
          _buildExercise('Exercise 2: Machine Crunch', abs2),
          const SizedBox(height: 15),
          _buildExercise('Exercise 3: Landmine Twists', abs3),
          const SizedBox(height: 15),
          _buildExercise('Exercise 4: Cable Side Bend', abs4),
          const SizedBox(height: 15),
          _buildExercise('Exercise 5: Hanging Knee Raise', abs5),
          const SizedBox(height: 15),
          _buildExercise('Exercise 6: Hanging Straight Leg Raise', abs6),
          const SizedBox(height: 15),
          _buildExercise('Exercise 7: Hanging Windshield Wiper', abs7),
          const SizedBox(height: 15),
          _buildExercise('Exercise 8: Abs Wheel Rollout', abs8),
          const SizedBox(height: 15),
          _buildExercise('Cool-Down:', cooldownabs),
          const SizedBox(height: 15),
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
