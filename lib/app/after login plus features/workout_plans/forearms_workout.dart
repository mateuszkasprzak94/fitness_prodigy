import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String start =
    '''This workout will help users effectively target their forearm muscles for strength and development. As always, include warm-up and cool-down sessions in each workout.''';

String warmup =
    '''Perform 5-10 minutes of light cardio and dynamic wrist stretches to prepare the forearms and increase blood flow.''';

String forearms1 = '''Sets: 4
Reps: 10-12 (each direction)
Rest: 2 minutes
Description: Use a wrist roller with a rope attached to a weight. Roll the weight up and down by twisting the wrists in both directions. Wrist rollers effectively target forearm muscles.''';

String forearms2 = '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Hold a barbell behind your back with an overhand grip, rest your forearms on a bench, and curl the barbell upwards using your wrists. Behind-the-back wrist curls focus on the forearms.''';

String forearms3 = '''Sets: 3
Reps: Hold for 20-30 seconds
Rest: 1.5 minutes
Description: Hold two weight plates (smooth side out) with your fingers and thumb, and pinch them together. Maintain the pinch for the designated time. Plate pinches improve grip strength and forearm endurance.''';

String forearms4 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use fat grip attachments on dumbbells or barbells. Perform biceps curls with the thick grips to engage the forearm muscles more intensely.''';

String forearms5 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold dumbbells at your sides, curl them upwards using your biceps, then rotate your wrists outward at the top and lower the dumbbells with a pronated grip. Zottman curls target both the biceps and forearms.''';

String forearms6 = '''Sets: 3
Distance: Carry for 30-40 meters
Rest: 1.5 minutes
Description: Hold a heavy dumbbell or kettlebell in each hand and walk for the designated distance. Farmer's carries enhance forearm strength and grip.''';

String forearms7 = '''Sets: 3
Duration: Hang for 30-45 seconds
Rest: 1.5 minutes
Description: Find a pull-up bar, grip it with both hands, and hang for the specified time. Bar hangs challenge forearm endurance and grip strength.''';

String cooldown =
    '''Stretch the forearms and wrists for 5-10 minutes to promote flexibility and reduce muscle tension.''';

String end =
    '''This forearms-focused workout offers a comprehensive routine targeting the forearm muscles using various exercises. Encourage users to choose appropriate weights, maintain proper form, and focus on the mind-muscle connection. Remind them to listen to their bodies and adjust the workout intensity as needed for their fitness level.''';

class ForearmsWorkout extends StatelessWidget {
  const ForearmsWorkout({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forearms Workout'),
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
            'Forearms-Focused Workout: Building Strong Forearms',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmup),
          const SizedBox(height: 15),
          _buildExercise('Exercise 1: Wrist Roller', forearms1),
          const SizedBox(height: 15),
          _buildExercise(
              'Exercise 2: Behind-the-Back Barbell Wrist Curl', forearms2),
          const SizedBox(height: 15),
          _buildExercise('Exercise 3: Plate Pinch', forearms3),
          const SizedBox(height: 15),
          _buildExercise('Exercise 4: Fat Grip Biceps Curl', forearms4),
          const SizedBox(height: 15),
          _buildExercise('Exercise 5: Zottman Curl', forearms5),
          const SizedBox(height: 15),
          _buildExercise('Exercise 6: Farmer’s Carry', forearms6),
          const SizedBox(height: 15),
          _buildExercise('Exercise 7: Bar Hang', forearms7),
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
