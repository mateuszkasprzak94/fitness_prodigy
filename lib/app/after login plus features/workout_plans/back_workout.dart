import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

String start =
    '''This workout is designed to target different areas of the back and promote overall strength and development. Remember to warm up before starting the workout and cool down afterwards.''';

String warmup =
    '''Perform 5-10 minutes of light cardio to increase blood flow to the muscles and prepare the body for the workout.''';

String back1 = '''Sets: 4
Reps: 5-6
Rest: 2-3 minutes
Description: Perform deadlifts with proper form, lifting the barbell from the ground to a standing position. Deadlifts engage the entire back, particularly the lower back, lats, and traps.''';

String back2 = '''Sets: 4
Reps: 8-10
Rest: 2 minutes
Description: Hold a barbell with an overhand grip, bend at the hips while keeping your back straight, and row the barbell to your lower abdomen. Lower the barbell with control. Bent-over rows target the upper back and lats.''';

String back3 = '''Sets: 3
Reps: 6-8
Rest: 1.5 minutes
Description: Perform pull-ups using a wide grip. Hang from a bar and pull your body up until your chin is above the bar. Lower your body with control. Pull-ups emphasize the upper back and lats.''';

String back4 = '''Sets: 3
Reps: 8-10
Rest: 1.5 minutes
Description: Use a T-bar row machine or landmine attachment. Hold the handles and row the weight towards your torso, squeezing your shoulder blades together. T-bar rows target the middle back.''';

String back5 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use a seated row machine. Sit down, hold the handles, and pull them towards your torso while keeping your back straight. Seated rows engage the upper back and lats.''';

String back6 = '''Sets: 3
Reps: 12-15 per arm
Rest: 1.5 minutes
Description: Use a Smith machine with one end of the barbell. Place a bench next to the machine, rest one knee on the bench, and row the barbell towards your hip. Alternate arms. This exercise targets the lats and rear deltoids.''';

String back7 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use a lat pull-down machine. Grip the bar wider than shoulder-width, pull the bar down to your chest, and slowly release it back up. Lat pull-downs engage the lats and upper back.''';

String back8 = '''Sets: 3
Reps: 10-12 per arm
Rest: 1.5 minutes
Description: Hold a dumbbell in one hand, place the opposite knee and hand on a bench, and row the dumbbell towards your hip. Single-arm dumbbell rows target the lats and rear deltoids.''';

String cooldown =
    '''Stretch the back and shoulders for 5-10 minutes to promote flexibility and reduce muscle tension.''';

String end =
    '''This back workout provides a comprehensive routine targeting various areas of the back. Ensure users use appropriate weights and maintain proper form throughout the workout. Encourage them to listen to their bodies and adjust the workout intensity as needed.''';

class BackWorkout extends StatelessWidget {
  const BackWorkout({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Back Workout',
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
            'Back Workout: Strengthening a Powerful Back',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmup),
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
