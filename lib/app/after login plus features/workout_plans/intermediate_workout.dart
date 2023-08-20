import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String start =
    '''Here's a 4-week intermediate workout plan that builds upon the beginner plan, adding more complexity and intensity to challenge users who have progressed beyond the beginner level. As always, remember to include warm-up and cool-down sessions in each workout.''';

String intermediate1 = '''1. Barbell Bench Press - 3 sets of 8-10 reps
2. Dumbbell Rows - 3 sets of 8-10 reps
3. Seated Dumbbell Shoulder Press - 3 sets of 8-10 reps
4. Dips - 3 sets of 10-12 reps''';

String intermediate2 = '''1. Back Squats - 4 sets of 8-10 reps
2. Romanian Deadlift - 3 sets of 8-10 reps
3. Bulgarian Split Squats - 3 sets of 10-12 reps per leg
4. Calf Raises - 3 sets of 12-15 reps''';

String intermediate3 = '''1. Plank Variations - 3 sets of 20-30 seconds each
2. Hanging Leg Raises - 3 sets of 10-12 reps
3. Cardio Intervals (e.g., sprints, jump rope) - 15-20 minutes''';

String intermediate4 = '''1. Pull-Ups or Assisted Pull-Ups - 3 sets of 6-8 reps
2. Barbell Rows - 3 sets of 8-10 reps
3. Arnold Press - 3 sets of 8-10 reps
4. Barbell Bicep Curls - 3 sets of 10-12 reps''';

String intermediate5 = '''1. Front Squats - 4 sets of 6-8 reps
2. Deadlifts (conventional or sumo) - 3 sets of 6-8 reps
3. Lunges with Dumbbells - 3 sets of 10-12 reps per leg
4. Seated Calf Raises - 3 sets of 12-15 reps''';

String intermediate6 =
    '''1. Hanging Windshield Wipers - 3 sets of 8-10 reps per side
2. Russian Twists - 3 sets of 12-15 reps per side
3. High-Intensity Interval Training (HIIT) - 20-25 minutes''';

String end = '''
The intermediate workout plan focuses on building strength, hypertrophy, and increasing intensity. Users at this level should have a solid foundation of proper form and technique. Encourage them to track their progress and gradually increase weights as they feel comfortable.''';

class IntermediateWorkout extends StatelessWidget {
  const IntermediateWorkout({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intermediate Workout'),
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
            'Weeks 1-2: Intermediate Strength and Hypertrophy',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Day 1: Upper Body Push', intermediate1),
          const SizedBox(height: 15),
          _buildExercise('Day 2: Lower Body', intermediate2),
          const SizedBox(height: 15),
          _buildExercise('Day 3: Core and Cardio', intermediate3),
          const SizedBox(height: 15),
          const Text(
            'Weeks 3-4: Progressive Overload and Intensity',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Day 1: Upper Body Pull', intermediate4),
          const SizedBox(height: 15),
          _buildExercise('Day 2: Lower Body', intermediate5),
          const SizedBox(height: 15),
          _buildExercise('Day 3: Core and Cardio', intermediate6),
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
