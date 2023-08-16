import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

const String chestExercises =
    '''Embark on a transformative journey for your chest muscles with this ultimate workout that leaves no angle untouched. This dynamic routine combines classic and effective exercises to help you carve a chest that's not only powerful but also aesthetically pleasing. Elevate your upper body strength and achieve a well-defined chest that radiates confidence and vitality.''';
const String chest1 =
    '''The flat bench press is a foundational compound exercise that targets the entire chest, shoulders, and triceps. Begin by lying on a flat bench with your feet flat on the floor. Grip the barbell slightly wider than shoulder-width apart and unrack it. Lower the barbell to your chest with control, allowing your elbows to bend. Push the barbell back up explosively to the starting position. Keep your core engaged and maintain a stable body throughout the movement. The flat bench press builds overall chest strength and mass.''';
const String chest2 =
    '''The incline bench press emphasizes the upper chest muscles. Set the bench at a 30 to 45-degree angle. Lie back on the bench, grip the barbell, and unrack it. Lower the barbell to your upper chest, then press it back up to the starting position. This movement targets the upper portion of your pectoral muscles, contributing to a well-balanced chest development.''';
const String chest3 =
    '''For the decline bench press, set the bench at a decline angle (head lower than feet). Lie back and grip the barbell, then unrack it. Lower the barbell to your lower chest and press it back up. The decline angle places emphasis on the lower chest muscles, helping to create a comprehensive chest workout that addresses all areas of the pectorals.''';
const String chest4 =
    '''Cable crossovers are an isolation exercise that targets the inner chest. Adjust the cables to chest height, and stand in the middle. Hold the handles in each hand and step forward slightly. With a slight bend in your elbows, bring your hands together in a hugging motion in front of your chest. Focus on squeezing your chest muscles as you cross the cables. This exercise enhances muscle separation and definition.''';
const String chest5 =
    '''Chest dips are performed on parallel bars. Hold the bars with your arms fully extended, then lower your body by bending your elbows. Keep your torso slightly leaning forward to engage the chest muscles. Push yourself back up to the starting position. Chest dips are effective for targeting both the chest and triceps, providing a challenging bodyweight exercise.''';
const String chest6 =
    '''Lie perpendicular on a bench with only your upper back and shoulders supported. Hold a dumbbell with both hands above your chest. Lower the dumbbell behind your head, feeling a stretch in your chest and lats. Raise the dumbbell back to the starting position. Dumbbell pull-overs engage the chest and back muscles, contributing to chest expansion and overall upper body development.''';
const String chest7 =
    '''Machine fly is an isolation exercise that targets the chest muscles without the need for stabilizing. Adjust the machine arms to chest height. Sit down and grasp the handles with a neutral grip. Bring the handles together in a controlled motion in front of your chest, focusing on squeezing your chest muscles. Slowly return to the starting position. Machine flies are excellent for isolating and thoroughly working the chest muscles.''';
const String end =
    '''Incorporate these exercises into your chest workout routine to create a well-rounded and effective training regimen. Remember to warm up before starting and use proper form throughout each exercise. Adjust the weights and repetitions based on your fitness level and goals. Consistency and dedication will lead to a stronger, more sculpted chest over time.''';

class ChestPage extends StatelessWidget {
  const ChestPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forge Your Pectoral Power'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            chestExercises,
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Flat Bench Press:', chest1),
          const SizedBox(height: 15),
          _buildExercise('2. Incline Bench Press:', chest2),
          const SizedBox(height: 15),
          _buildExercise('3. Decline Bench Press:', chest3),
          const SizedBox(height: 15),
          _buildExercise('4. Cable Crossover:', chest4),
          const SizedBox(height: 15),
          _buildExercise('5. Chest Dip:', chest5),
          const SizedBox(height: 15),
          _buildExercise('6. Dumbbell Pull-Over:', chest6),
          const SizedBox(height: 15),
          _buildExercise('7. Machine Fly:', chest7),
          const Text(
            end,
            style: TextStyle(fontWeight: FontWeight.w400),
          )
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
