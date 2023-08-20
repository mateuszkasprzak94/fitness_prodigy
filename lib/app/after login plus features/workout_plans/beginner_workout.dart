import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String start =
    '''Here's a simple and well-rounded 4-week beginner workout plan that targets different muscle groups while gradually increasing intensity. Remember to include warm-up and cool-down sessions in each workout. Feel free to adjust the plan based on your app's layout and preferences.''';

String beginner1 = '''
1. Push Ups - 3 sets of 8-10 reps
2. Dumbbell Rows - 3 sets of 8-10 reps
3. Seated Dumbbell Shoulder Press - 3 sets of 8-10 reps
4. Dumbbell Bicep Curls - 3 sets of 10-12 reps''';

String beginner2 = '''
1. Bodyweight Squats - 3 sets of 12-15 reps
2. Walking Lunges - 3 sets of 10-12 reps per leg
3. Leg Press - 3 sets of 10-12 reps
4. Calf Raises - 3 sets of 12-15 reps''';

String beginner3 = '''1. Hanging Leg Raises - 3 sets of 8-10 reps
2. Stability Ball Plank - 3 sets of 20-30 seconds
3. Light Cardio - 20-25 minutes''';

String beginner4 = '''
1. Incline Push Ups (using an elevated surface) - 3 sets of 10-12 reps
2. Barbell Rows (if available) - 3 sets of 8-10 reps
3. Seated Dumbbell Shoulder Press - 3 sets of 10-12 reps
4. Dumbbell Bicep Curls - 3 sets of 12-15 reps''';

String beginner5 = '''
1. Goblet Squats - 3 sets of 10-12 reps
2. Bulgarian Split Squats - 3 sets of 8-10 reps per leg
3. Leg Press - 3 sets of 12-15 reps
4. Calf Raises - 3 sets of 15-20 reps''';

String beginner6 = '''
1. Hanging Leg Raises - 3 sets of 8-10 reps
2. Stability Ball Plank - 3 sets of 20-30 seconds
3. Light Cardio - 20-25 minutes''';

String end = '''
Remember, safety and proper form are essential, especially for beginners. Encourage users to start with lighter weights and focus on mastering the correct technique. Additionally, progress should be gradual to prevent overtraining and injuries. You can also consider including rest days in the plan for recovery.''';

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
        title: const Text('Beginner Workout'),
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
