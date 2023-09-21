import 'package:fitness_prodigy/app/pages/workout_plans/text_for_workout_plans_pages/text_for_workouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ShouldersWorkoutPage extends StatelessWidget {
  const ShouldersWorkoutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shoulders Workout',
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
            startshoulders,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          const Text(
            'Shoulders Workout: Sculpting Strong Shoulders',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmupshoulders),
          const SizedBox(height: 15),
          _buildExercise('Exercise 1: Overhead Press', shoulders1),
          const SizedBox(height: 15),
          _buildExercise(
              'Exercise 2: Seated Dumbbell Shoulder Press', shoulders2),
          const SizedBox(height: 15),
          _buildExercise('Exercise 3: Barbell Front Raise', shoulders3),
          const SizedBox(height: 15),
          _buildExercise('Exercise 4: Dumbbell Lateral Raise', shoulders4),
          const SizedBox(height: 15),
          _buildExercise('Exercise 5: Barbell Upright Row', shoulders5),
          const SizedBox(height: 15),
          _buildExercise('Exercise 6: Reverse Dumbbell Flyes', shoulders6),
          const SizedBox(height: 15),
          _buildExercise('Exercise 7: Face Pull', shoulders7),
          const SizedBox(height: 15),
          _buildExercise('Exercise 8: Barbell Rear Delt Row', shoulders8),
          const SizedBox(height: 15),
          _buildExercise('Cool-Down:', cooldownshoulders),
          const SizedBox(height: 15),
          Text(
            endshoulders,
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
