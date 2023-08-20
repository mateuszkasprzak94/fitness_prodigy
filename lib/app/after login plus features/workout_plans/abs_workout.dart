import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String start =
    '''TThis workout will help users effectively target their core muscles for strength and definition.  As always, include warm-up and cool-down sessions in each workout.''';

String warmup =
    '''Perform 5-10 minutes of light cardio and dynamic torso stretches to prepare the core and increase blood flow.''';

String abs1 = '''Sets: 4
Reps: 12-15
Rest: 1.5 minutes
Description: Attach a rope handle to a high cable pulley. Kneel in front of the cable machine, hold the rope behind your head, and crunch your torso downwards while engaging the core.''';

String abs2 = '''Sets: 3
Reps: 15-20
Rest: 1.5 minutes
Description: Use an ab crunch machine. Sit down, grip the handles, and crunch your torso forward while contracting the abdominal muscles.''';

String abs3 = '''Sets: 3 (per side)
Reps: 12-15 (per side)
Rest: 1.5 minutes
Description: Insert one end of a barbell into a landmine attachment. Hold the other end with both hands, rotate your torso to one side, and then to the other side in a controlled twisting motion.''';

String abs4 = '''Sets: 3 (per side)
Reps: 12-15 (per side)
Rest: 1.5 minutes
Description: Attach a D-handle to a low cable pulley. Stand sideways to the cable machine, hold the handle with one hand, and perform side bends to engage the oblique muscles.''';

String abs5 = '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Hang from a pull-up bar, raise your knees towards your chest by contracting the abdominal muscles, and then lower them back down with control.''';

String abs6 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hang from a pull-up bar, keep your legs straight, raise them towards the ceiling, and then lower them back down slowly.''';

String abs7 = '''Sets: 3 (per side)
Reps: 8-10 (per side)
Rest: 1.5 minutes
Description: Hang from a pull-up bar, keep your legs straight, and perform controlled side-to-side movements with your legs, similar to windshield wipers.''';

String abs8 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold an ab wheel with both hands, kneel on the floor, and roll the wheel forward while extending your torso. Keep your core engaged and your back straight.''';

String cooldown =
    '''Stretch the core and torso for 5-10 minutes to promote flexibility and reduce muscle tension.''';

String end =
    '''This abs-focused workout provides a comprehensive routine targeting the core muscles using various exercises. Encourage users to choose appropriate intensities, maintain proper form, and focus on the mind-muscle connection. Remind them to listen to their bodies and adjust the workout intensity as needed for their fitness level.''';

class AbsWorkout extends StatelessWidget {
  const AbsWorkout({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Abs Workout'),
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
            'Abs-Focused Workout: Strengthening Your Core',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmup),
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
