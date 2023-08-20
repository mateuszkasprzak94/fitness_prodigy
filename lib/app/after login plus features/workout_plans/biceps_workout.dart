import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String start =
    '''This workout focuses on targeting the biceps muscles from different angles to help users achieve well-defined and sculpted arms. As always, include warm-up and cool-down sessions in each workout.''';

String warmup =
    '''Perform 5-10 minutes of light cardio and dynamic arm stretches to increase blood flow to the muscles and prepare the arms for the workout.''';

String biceps1 = '''Sets: 4
Reps: 8-10
Rest: 2 minutes
Description: Hold a barbell with an underhand grip, curl the barbell towards your shoulders, and then lower it back down. Barbell curls target the biceps muscles.''';

String biceps2 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Attach a straight bar to a low cable pulley. Stand facing the cable machine and curl the bar upwards using a supinated grip. Bar cable curls emphasize biceps activation.''';

String biceps3 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use an EZ bar attachment on a preacher curl bench. Grip the EZ bar with an underhand grip and curl the barbell towards your shoulders. EZ bar preacher curls isolate the biceps.''';

String biceps4 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Sit on an incline bench and hold a dumbbell in each hand with your arms fully extended. Curl the dumbbells towards your shoulders while keeping your upper arms stationary. Incline dumbbell curls target the biceps peak.''';

String biceps5 = '''Sets: 3 per arm
Reps: 10-12
Rest: 1.5 minutes
Description: Use a preacher curl bench and hold a dumbbell in one hand. Place your upper arm against the bench and curl the dumbbell towards your shoulder. One-arm dumbbell preacher curls isolate each bicep individually.''';

String biceps6 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a barbell with an overhand grip, curl the barbell towards your shoulders, and then lower it back down. Reverse barbell curls target the brachialis and forearms.''';

String biceps7 = '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Sit on a bench and hold a dumbbell in each hand with your arms fully extended. Curl the dumbbells towards your shoulders while keeping your upper arms stationary. Seated dumbbell curls provide a different angle of biceps engagement.''';

String biceps8 = '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Attach a straight bar to a high cable pulley. Stand facing the cable machine and curl the bar upwards using a supinated grip. Standing biceps cable curls provide constant tension on the biceps.''';

String cooldown =
    '''Stretch the biceps and arms for 5-10 minutes to promote flexibility and reduce muscle tension.''';

String end =
    '''This biceps workout provides a comprehensive routine targeting various aspects of the biceps muscles. Encourage users to use appropriate weights, maintain proper form, and focus on the mind-muscle connection. Remind them to listen to their bodies and adjust the workout intensity as needed.''';

class BicepsWorkout extends StatelessWidget {
  const BicepsWorkout({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biceps Workout'),
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
            'Biceps Workout: Sculpting Strong Biceps',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
          const SizedBox(height: 15),
          _buildExercise('Warm-Up:', warmup),
          const SizedBox(height: 15),
          _buildExercise('Exercise 1: Barbell Curls', biceps1),
          const SizedBox(height: 15),
          _buildExercise('Exercise 2: Bar Cable Curls', biceps2),
          const SizedBox(height: 15),
          _buildExercise('Exercise 3: EZ Bar Preacher Curls', biceps3),
          const SizedBox(height: 15),
          _buildExercise('Exercise 4: Incline Dumbbell Curls', biceps4),
          const SizedBox(height: 15),
          _buildExercise(
              'Exercise 5: One-arm Dumbbell Preacher Curls', biceps5),
          const SizedBox(height: 15),
          _buildExercise('Exercise 6: Reverse Barbell Curls', biceps6),
          const SizedBox(height: 15),
          _buildExercise('Exercise 7: Seated Dumbbell Curls', biceps7),
          const SizedBox(height: 15),
          _buildExercise('Exercise 8: Standing Biceps Cable Curl', biceps8),
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
