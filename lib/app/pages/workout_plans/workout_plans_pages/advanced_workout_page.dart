import 'package:fitness_prodigy/app/pages/workout_plans/text_for_workout_plans_pages/text_for_workouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvancedWorkoutPage extends StatelessWidget {
  const AdvancedWorkoutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Advanced Workout',
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
            startadvanced,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          const Text(
            'Weeks 1-2: Advanced Strength and Conditioning',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Day 1: Upper Body Strength', advanced1),
          const SizedBox(height: 15),
          _buildExercise('Day 2: Lower Body Power', advanced2),
          const SizedBox(height: 15),
          _buildExercise('Day 3: Core and Conditioning', advanced3),
          const SizedBox(height: 15),
          const Text(
            'Weeks 3-4: Hypertrophy and Power',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Day 1: Upper Body Hypertrophy', advanced4),
          const SizedBox(height: 15),
          _buildExercise('Day 2: Lower Body Power', advanced5),
          const SizedBox(height: 15),
          _buildExercise('Day 3: Core and Conditioning', advanced6),
          const SizedBox(height: 15),
          Text(
            endadvanced,
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
