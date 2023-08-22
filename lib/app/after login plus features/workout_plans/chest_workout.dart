import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

String start =
    '''This workout focuses on targeting the chest muscles from different angles and utilizing a variety of movements. Remember to warm up before starting the workout and cool down afterwards.''';

String warmup =
    '''Perform 5-10 minutes of light cardio (e.g., brisk walking, easy cycling) to increase blood flow to the muscles and prepare the body for the workout.''';

String chest1 = '''Sets: 4
Reps: 8-10
Rest: 2 minutes
Description: Lie on a flat bench, grip the barbell slightly wider than shoulder-width, and lower the barbell to your chest. Press the barbell back up to the starting position. Flat bench press targets the overall chest muscles.''';

String chest2 = '''Sets: 4
Reps: 8-10
Rest: 2 minutes
Description: Lie on an incline bench, grip the barbell slightly wider than shoulder-width, and lower the barbell to your upper chest. Press the barbell back up to the starting position. Incline bench press emphasizes the upper chest.''';

String chest3 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Lie on a decline bench, grip the barbell slightly wider than shoulder-width, and lower the barbell to your lower chest. Press the barbell back up to the starting position. Decline bench press targets the lower chest.''';

String chest4 = '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Stand between two high pulley cables, hold a handle in each hand, and cross your arms in front of your chest. Pull the handles towards the center of your chest, focusing on squeezing the chest muscles at the end of the movement.''';

String chest5 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use parallel bars or dip bars. Lower your body by bending your elbows, keeping your torso slightly forward. Push through your palms to return to the starting position. Chest dips target the lower chest and triceps.''';

String chest6 = '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Lie on a bench, hold a dumbbell with both hands overhead, and lower the dumbbell behind your head. Lift the dumbbell back to the starting position. Dumbbell pull-overs engage the chest and serratus anterior.''';

String cooldown =
    '''Stretch the chest and shoulders for 5-10 minutes to promote flexibility and reduce muscle tension.''';

String end =
    '''This chest workout provides a comprehensive routine targeting various areas of the chest. Make sure users use appropriate weights and focus on maintaining proper form throughout the workout. As always, encourage them to listen to their bodies and adjust the workout intensity as needed.''';

class ChestWorkout extends StatelessWidget {
  const ChestWorkout({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chest Workout',
          style: GoogleFonts.satisfy(
              fontSize: 30, color: const Color.fromARGB(230, 33, 149, 243)),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.orange],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            start,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          const Text(
            'Chest Workout: Sculpting Strong Pectorals',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmup),
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
          _buildExercise('Cool-Down:', cooldown),
          const SizedBox(height: 15),
          Text(
            end,
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
