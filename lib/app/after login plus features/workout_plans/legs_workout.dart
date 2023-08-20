import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String start =
    '''This workout will help users effectively target their leg muscles for strength and development. As always, include warm-up and cool-down sessions in each workout.''';

String warmup =
    '''Perform 5-10 minutes of light cardio and dynamic leg stretches to prepare the legs and increase blood flow.''';

String legs1 = '''Sets: 4
Reps: 8-10
Rest: 2-3 minutes
Description: Place a barbell on your upper back, lower your body by bending your knees and hips, and then push back up. Squats engage the quadriceps, hamstrings, and glutes.''';

String legs2 = '''Sets: 3 (per leg)
Reps: 10-12 (per leg)
Rest: 1.5 minutes
Description: Hold a dumbbell in each hand, take a step forward into a lunge, and then step forward with the other leg. Dumbbell walking lunges target the quadriceps and glutes.''';

String legs3 = '''Sets: 4
Reps: 10-12
Rest: 2 minutes
Description: Sit in a leg press machine, place your feet on the platform, and push the platform upward by extending your knees. Leg presses target the quadriceps, hamstrings, and glutes.''';

String legs4 = '''Sets: 3 (per leg)
Reps: 10-12 (per leg)
Rest: 1.5 minutes
Description: Place one foot on a bench behind you, lunge down with the other leg, and then push back up. Bulgarian split squats target the quadriceps, hamstrings, and glutes.''';

String legs5 = '''Sets: 4
Reps: 12-15
Rest: 1.5 minutes
Description: Use a calf raise machine or a platform, stand on the balls of your feet, and raise your heels as high as possible. Calf raises target the calf muscles.''';

String legs6 = '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Sit in a leg extension machine, extend your knees to lift the weights, and then lower them back down. Leg extensions focus on the quadriceps.''';

String legs7 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a barbell with an overhand grip, hinge at the hips while keeping your back straight, and lower the barbell down your legs. Romanian deadlifts target the hamstrings and glutes.''';

String legs8 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a dumbbell or kettlebell close to your chest, squat down, and then push back up. Goblet squats engage the quadriceps, hamstrings, and glutes.''';

String cooldown =
    '''Stretch the legs and hips for 5-10 minutes to promote flexibility and reduce muscle tension.''';

String end =
    '''This legs-focused workout offers a comprehensive routine targeting various muscle groups of the lower body. Encourage users to choose appropriate weights, maintain proper form, and focus on the mind-muscle connection. Remind them to listen to their bodies and adjust the workout intensity as needed for their fitness level.''';

class LegsWorkout extends StatelessWidget {
  const LegsWorkout({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Legs Workout'),
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
            'Legs-Focused Workout: Building Strong Lower Body',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmup),
          const SizedBox(height: 15),
          _buildExercise('Exercise 1: Squats', legs1),
          const SizedBox(height: 15),
          _buildExercise('Exercise 2: Dumbbell Walking Lunge', legs2),
          const SizedBox(height: 15),
          _buildExercise('Exercise 3: Leg Press', legs3),
          const SizedBox(height: 15),
          _buildExercise('Exercise 4: Bulgarian Split Squats', legs4),
          const SizedBox(height: 15),
          _buildExercise('Exercise 5: Calf Raises', legs5),
          const SizedBox(height: 15),
          _buildExercise('Exercise 6: Leg Extensions', legs6),
          const SizedBox(height: 15),
          _buildExercise('Exercise 7: Romanian Deadlift', legs7),
          const SizedBox(height: 15),
          _buildExercise('Exercise 8: Goblet Squat', legs8),
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
