import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

String shouldersExercise =
    '''Embark on a journey to develop strong and well-defined shoulder muscles with this comprehensive workout routine. By incorporating a variety of effective exercises, you'll sculpt shoulders that not only exude power but also enhance your overall upper body aesthetics. Elevate your shoulder strength and achieve a robust and balanced physique that radiates confidence and vitality.''';
String shoulders1 =
    '''The overhead press, also known as the military press, is a compound movement that targets the shoulders, triceps, and upper chest. Stand with your feet shoulder-width apart and grip the barbell slightly wider than shoulder-width. Press the barbell overhead, extending your arms fully. Lower the barbell back to shoulder level with control. The overhead press is a fundamental exercise for building shoulder strength and stability.''';
String shoulders2 =
    '''Seated dumbbell shoulder press isolates the shoulder muscles while providing stability. Sit on a bench with back support, hold a dumbbell in each hand at shoulder height, and press the weights overhead. Lower the dumbbells back to shoulder level and repeat. This exercise targets all three heads of the deltoids for well-rounded shoulder development.''';
String shoulders3 =
    '''The barbell front raise isolates the front deltoid. Hold a barbell with an overhand grip in front of your thighs. Lift the barbell straight in front of you until it reaches shoulder height. Lower the barbell back down with control. The barbell front raise helps enhance front shoulder definition and strength.''';
String shoulders4 =
    '''Dumbbell lateral raise targets the side deltoids. Hold a dumbbell in each hand at your sides and lift them out to the sides until they reach shoulder height. Lower the dumbbells back down with control. This exercise contributes to broader and more defined shoulders.''';
String shoulder5 =
    '''The barbell upright row primarily targets the upper traps and lateral deltoids. Hold a barbell with an overhand grip and lift it towards your chin, keeping it close to your body. Lower the barbell back down with control. The barbell upright row helps build strong and well-developed upper traps.''';
String shoulders6 =
    '''Reverse dumbbell flyes target the rear deltoids and upper back. Bend at the hips and knees while holding a dumbbell in each hand. Keep a slight bend in your elbows and lift the dumbbells out to the sides until they reach shoulder height. Lower the dumbbells back down with control. This exercise contributes to a balanced shoulder appearance.''';
String shoulders7 =
    '''The face pull is an effective exercise for the rear deltoids and upper back. Attach a rope handle to a cable machine at shoulder height. Grip the handles with palms facing each other and pull the rope towards your face. Squeeze your shoulder blades together, then release the rope with control. The face pull helps improve posture and rear deltoid strength.''';
String shoulders8 =
    '''The barbell rear delt row targets the rear deltoids and upper back. Bend at the hips and knees while holding a barbell with an overhand grip. Pull the barbell towards your upper abdomen, leading with your elbows. Lower the barbell back down with control. This exercise contributes to a well-rounded shoulder development.''';
String shoulders9 =
    '''The Arnold press is a unique shoulder exercise that targets all three heads of the deltoids. Hold a dumbbell in each hand at shoulder height with palms facing you. As you press the dumbbells overhead, rotate your palms to face forward. Reverse the movement as you lower the dumbbells back down. The Arnold press offers a comprehensive shoulder workout.''';
String end =
    '''Incorporate these exercises into your shoulder workout routine to create a balanced and effective training regimen. Remember to prioritize proper form, warm-up adequately, and adjust the weights and repetitions based on your fitness level and goals. Consistency and dedication will lead to stronger, broader, and more defined shoulders over time.''';

class ShouldersPage extends StatelessWidget {
  const ShouldersPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crafting Broad and Impressive Shoulders',
          style: GoogleFonts.lancelot(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          maxLines: 2,
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
            shouldersExercise,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Overhead Press:', shoulders1),
          const SizedBox(height: 15),
          _buildExercise('2. Seated Dumbbell Shoulder Press:', shoulders2),
          const SizedBox(height: 15),
          _buildExercise('3. Barbell Front Raise:', shoulders3),
          const SizedBox(height: 15),
          _buildExercise('4. Dumbbell Lateral Raise:', shoulders4),
          const SizedBox(height: 15),
          _buildExercise('5. Barbell Upright Row:', shoulder5),
          const SizedBox(height: 15),
          _buildExercise('6. Reverse Dumbbell Flyes:', shoulders6),
          const SizedBox(height: 15),
          _buildExercise('7. Face Pull:', shoulders7),
          const SizedBox(height: 15),
          _buildExercise('8. Barbell Rear Delt Row:', shoulders8),
          const SizedBox(height: 15),
          _buildExercise('9. Arnold Press:', shoulders9),
          const SizedBox(height: 15),
          const Divider(
            height: 10,
            thickness: 5,
          ),
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
