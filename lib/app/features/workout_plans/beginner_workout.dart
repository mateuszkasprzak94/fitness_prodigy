import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/features/workout_plans/text_for_workout_plans/text_for_workouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BeginnerWorkout extends StatelessWidget {
  const BeginnerWorkout({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beginner Workout',
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
            startbeginner,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          const Text(
            'Weeks 1-2: Full Body Beginner Workout',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Day 1: Upper Body Focus', beginner1),
          const SizedBox(height: 15),
          _buildExercise('Day 2: Lower Body Focus', beginner2),
          const SizedBox(height: 15),
          _buildExercise('Day 3: Core and Cardio', beginner3),
          const SizedBox(height: 15),
          const Text(
            'Weeks 3-4: Progressing and Adding Variations',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Day 1: Upper Body Focus', beginner4),
          const SizedBox(height: 15),
          _buildExercise('Day 2: Lower Body Focus', beginner5),
          const SizedBox(height: 15),
          _buildExercise('Day 3: Core and Cardio', beginner6),
          const SizedBox(height: 15),
          Text(
            endbeginner,
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
