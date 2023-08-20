import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String start =
    '''Here's a 4-week advanced workout plan that is designed for individuals with a high level of fitness experience. This plan incorporates challenging exercises and higher intensity to help users push their limits. Remember to prioritize safety, proper form, and adequate recovery. As always, include warm-up and cool-down sessions in each workout.''';

String advanced1 = '''1. Weighted Pull-Ups - 4 sets of 6-8 reps
2. Barbell Bench Press - 4 sets of 6-8 reps
3. Standing Military Press - 4 sets of 6-8 reps
4. Close-Grip Bench Press - 3 sets of 8-10 reps''';

String advanced2 = '''1. Back Squats - 4 sets of 5-6 reps
2. Deadlifts - 4 sets of 5-6 reps
3. Box Jumps - 3 sets of 8-10 reps
4. Bulgarian Split Squats with Dumbbells - 3 sets of 8-10 reps per leg''';

String advanced3 = '''1. Hanging Windshield Wipers - 3 sets of 6-8 reps per side
2. Dragon Flags - 3 sets of 6-8 reps
3. Sprint Intervals - 8-10 rounds (30 seconds sprint, 60 seconds rest)''';

String advanced4 = '''1. Weighted Dips - 4 sets of 8-10 reps
2. Barbell Rows - 4 sets of 8-10 reps
3. Standing Arnold Press - 4 sets of 8-10 reps
4. Preacher Curls - 3 sets of 10-12 reps''';

String advanced5 = '''1. Front Squats - 4 sets of 5-6 reps
2. Romanian Deadlifts - 4 sets of 5-6 reps
3. Plyometric Lunges - 3 sets of 8-10 reps per leg
4. Standing Calf Raises - 4 sets of 10-12 reps''';

String advanced6 = '''1. Hanging Straight Leg Raises - 3 sets of 8-10 reps
2. Turkish Get-Ups - 3 sets of 4-5 reps per side
3. Hill Sprints - 6-8 rounds (60 seconds sprint uphill, 90 seconds rest)''';

String end = '''
The advanced workout plan is designed to challenge experienced users with complex movements and high-intensity training. Emphasize the importance of listening to their bodies, adjusting weights as needed, and ensuring adequate recovery. Encourage users to track their progress and adjust the plan based on their individual goals and responses.''';

class AdvancedWorkout extends StatelessWidget {
  const AdvancedWorkout({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advanced Workout'),
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
