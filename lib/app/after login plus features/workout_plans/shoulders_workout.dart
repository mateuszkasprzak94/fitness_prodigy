import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

String start =
    '''This workout is designed to target different parts of the shoulders for a well-rounded and sculpted shoulder development. As always, include warm-up and cool-down sessions in each workout.''';

String warmup =
    '''Perform 5-10 minutes of light cardio and dynamic shoulder stretches to increase blood flow to the muscles and prepare the shoulders for the workout.''';

String shoulders1 = '''Sets: 4
Reps: 6-8
Rest: 2-3 minutes
Description: Use a barbell or dumbbells. Press the weight overhead while standing, then lower it back down to shoulder level. Overhead presses target the entire shoulder complex.''';

String shoulders2 = '''Sets: 4
Reps: 8-10
Rest: 2 minutes
Description: Sit on a bench, hold a dumbbell in each hand at shoulder height, and press the dumbbells overhead. Lower them back down with control. Seated dumbbell shoulder presses focus on the front and middle deltoids.''';

String shoulders3 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a barbell with an overhand grip in front of your thighs. Lift the barbell straight up to shoulder height, then lower it back down. Barbell front raises target the front deltoids.''';

String shoulders4 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a dumbbell in each hand at your sides. Lift the dumbbells out to the sides until they reach shoulder level, then lower them back down. Dumbbell lateral raises target the side deltoids.''';

String shoulders5 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a barbell with an overhand grip in front of your thighs. Lift the barbell straight up towards your chin, keeping it close to your body. Barbell upright rows target the front and side deltoids.''';

String shoulders6 = '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Bend at the hips while holding a dumbbell in each hand. Raise the dumbbells out to the sides in a reverse fly motion, engaging the rear deltoids. Lower the dumbbells back down with control.''';

String shoulders7 = '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Attach a rope handle to a cable machine at chest height. Pull the rope towards your face while keeping your elbows high, squeezing your rear deltoids at the end of the movement.''';

String shoulders8 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use a barbell with a pronated grip. Bend at the hips while holding the barbell, and row it towards your hips, focusing on the rear deltoids.''';

String cooldown =
    '''Stretch the shoulders and upper body for 5-10 minutes to promote flexibility and reduce muscle tension.''';

String end =
    '''This shoulders workout provides a comprehensive routine targeting various parts of the shoulders. Encourage users to use appropriate weights, maintain proper form, and focus on mind-muscle connection. Remind them to listen to their bodies and adjust the workout intensity as needed.''';

class ShouldersWorkout extends StatelessWidget {
  const ShouldersWorkout({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

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
            start,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          const Text(
            'Shoulders Workout: Sculpting Strong Shoulders',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmup),
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
