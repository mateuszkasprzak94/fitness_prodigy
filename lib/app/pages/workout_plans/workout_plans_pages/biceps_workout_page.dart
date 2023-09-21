import 'package:fitness_prodigy/app/pages/workout_plans/text_for_workout_plans_pages/text_for_workouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BicepsWorkoutPage extends StatelessWidget {
  const BicepsWorkoutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Biceps Workout',
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
            startbiceps,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          const Text(
            'Biceps Workout: Sculpting Strong Biceps',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmupbiceps),
          const SizedBox(height: 15),
          _buildExercise('Exercise 1: Barbell Curls', biceps1),
          const SizedBox(height: 15),
          _buildExercise('Exercise 2: Bar Cable Curls', biceps2),
          const SizedBox(height: 15),
          _buildExercise('Exercise 3: EZ Bar Preacher Curls', biceps3),
          const SizedBox(height: 15),
          _buildExercise('Exercise 4: Incline Dumbbell Curls', biceps4),
          const SizedBox(height: 15),
          _buildExercise(
              'Exercise 5: One-arm Dumbbell Preacher Curls', biceps5),
          const SizedBox(height: 15),
          _buildExercise('Exercise 6: Reverse Barbell Curls', biceps6),
          const SizedBox(height: 15),
          _buildExercise('Exercise 7: Seated Dumbbell Curls', biceps7),
          const SizedBox(height: 15),
          _buildExercise('Exercise 8: Standing Biceps Cable Curl', biceps8),
          const SizedBox(height: 15),
          _buildExercise('Cool-Down:', cooldownbiceps),
          const SizedBox(height: 15),
          Text(
            endbiceps,
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
