import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String legsExercise =
    '''Embark on a journey to develop a robust and well-sculpted lower body with this comprehensive lower body workout routine. By incorporating a diverse range of effective exercises, you'll shape leg muscles that not only radiate power but also elevate your overall physique. Elevate your lower body prowess and unveil legs that command attention and exude confidence.''';
String legs1 =
    '''Squats are a foundational lower body exercise that targets the quadriceps, hamstrings, glutes, and core. Stand with your feet shoulder-width apart, lower your hips by bending your knees, and lower yourself into a squatting position. Push through your heels to return to a standing position. Squats build overall lower body strength and enhance muscle coordination.''';
String legs2 =
    '''Dumbbell walking lunges engage the quadriceps, hamstrings, and glutes while enhancing balance and coordination. Hold a dumbbell in each hand at your sides, step forward into a lunge, and lower your back knee towards the ground. Push off your front foot to return to a standing position, then alternate legs. Walking lunges contribute to leg strength and dynamic stability.''';
String legs3 =
    '''The leg press targets the quadriceps, hamstrings, and glutes. Sit on a leg press machine and push the weight upward using your feet. Extend your knees fully, then lower the weight back down with control. The leg press is effective for building lower body strength with a focus on the quads.''';
String legs4 =
    '''Bulgarian split squats isolate each leg and target the quadriceps, hamstrings, and glutes. Stand a few feet away from a bench, place one foot behind you on the bench, and lower your back knee towards the ground. Push through your front heel to return to a standing position. Bulgarian split squats contribute to unilateral leg strength and stability.''';
String legs5 =
    '''Calf raises target the calf muscles (gastrocnemius and soleus). Stand on an elevated surface with the balls of your feet, and raise your heels as high as possible. Lower your heels back down with control. Calf raises enhance lower leg strength and aesthetics.''';
String legs6 =
    '''Leg extensions isolate the quadriceps. Sit on a leg extension machine and extend your knees to lift the weight upward. Lower the weight back down with control. Leg extensions provide direct and targeted work for the quadriceps muscles.''';
String legs7 =
    '''The Romanian deadlift targets the hamstrings and glutes. Hold a barbell or dumbbells in front of your thighs, hinge at the hips, and lower the weight towards the ground while maintaining a slight bend in your knees. Keep your back straight and return to a standing position by engaging your hamstrings and glutes. Romanian deadlifts enhance hamstring strength and hip mobility.''';
String legs8 =
    '''Goblet squats engage the lower body while placing less stress on the lower back. Hold a dumbbell or kettlebell close to your chest, lower your hips into a squatting position, and push through your heels to return to a standing position. Goblet squats promote proper squat form and overall lower body development.''';
String legs9 =
    '''Seated leg curls target the hamstrings. Sit on a leg curl machine and curl the weight towards your glutes by bending your knees. Lower the weight back down with control. Seated leg curls provide direct and isolated work for the hamstring muscles.''';
String end =
    '''Incorporate these exercises into your lower body workout routine to create a comprehensive and effective training regimen. Prioritize proper form, warm-up adequately, and adjust the weights and repetitions based on your fitness level and goals. Consistency and dedication will lead to stronger, more defined legs over time.''';

class LegsPage extends StatelessWidget {
  const LegsPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forging Powerful Lower Body'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            legsExercise,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Squats:', legs1),
          const SizedBox(height: 15),
          _buildExercise('2. Dumbbell Walking Lunge:', legs2),
          const SizedBox(height: 15),
          _buildExercise('3. Leg Press:', legs3),
          const SizedBox(height: 15),
          _buildExercise('4. Bulgarian Split Squats:', legs4),
          const SizedBox(height: 15),
          _buildExercise('5. Calf Raises:', legs5),
          const SizedBox(height: 15),
          _buildExercise('6. Leg Extensions:', legs6),
          const SizedBox(height: 15),
          _buildExercise('7. Romanian Deadlift:', legs7),
          const SizedBox(height: 15),
          _buildExercise('8. Goblet Squat:', legs8),
          const SizedBox(height: 15),
          _buildExercise('9. Seated Leg Curl:', legs9),
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
          fontSize: 17,
        ),
      ),
      Text(
        description,
        style: const TextStyle(
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          fontSize: 12,
        ),
      ),
    ],
  );
}
