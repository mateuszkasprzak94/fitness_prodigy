import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

String start =
    '''This workout will help users effectively target their triceps for strength and definition. As always, include warm-up and cool-down sessions in each workout.''';

String warmup =
    '''Perform 5-10 minutes of light cardio and dynamic arm stretches to prepare the triceps and increase blood flow.''';

String triceps1 = '''Sets: 4
Reps: 10-12
Rest: 2 minutes
Description: Place your hands on a bench behind you, lower your body by bending your elbows, and then push your body back up. Bench dips target the triceps.''';

String triceps2 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a dumbbell with both hands above your head, lower the dumbbell behind your head, and then extend your arms back up. Dumbbell triceps extensions isolate the triceps.''';

String triceps3 = '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Perform push-ups with your hands positioned slightly narrower than shoulder-width. Lower your body by bending your elbows and then push your body back up. Push-ups engage the chest, shoulders, and triceps.''';

String triceps4 = '''Sets: 4
Reps: 8-10
Rest: 2 minutes
Description: Lie on a bench and grip the barbell with an underhand grip, lower the barbell to your chest, and then press it back up. Reverse grip bench press emphasizes the triceps.''';

String triceps5 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Attach a straight bar to a high cable pulley. Stand facing the cable machine and push the bar downwards using an underhand grip. Reverse grip triceps pushdowns isolate the triceps.''';

String triceps6 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Lie on a bench, hold an EZ bar with a narrow grip, lower the bar towards your forehead, and then extend your arms back up. Skull crushers target the long head of the triceps.''';

String triceps7 = '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Attach a rope handle to a high cable pulley. Stand facing the cable machine and push the rope downwards while keeping your upper arms stationary. Tricep rope pushdowns provide a continuous tension on the triceps.''';

String triceps8 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use a tricep press machine. Sit down, hold the handles, and extend your arms downwards. Then, flex your triceps to push the handles back up.''';

String cooldown =
    '''Stretch the triceps and arms for 5-10 minutes to promote flexibility and reduce muscle tension.''';

String end =
    '''This triceps-focused workout offers a comprehensive routine targeting the triceps muscles using a variety of exercises. Encourage users to select appropriate weights, maintain proper form, and concentrate on the mind-muscle connection. Remind them to pay attention to their bodies and adjust the workout intensity as necessary for their fitness level.''';

class TricepsWorkout extends StatelessWidget {
  const TricepsWorkout({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

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
            start,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          const Text(
            'Triceps-Focused Workout: Sculpting Strong Triceps',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmup),
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
