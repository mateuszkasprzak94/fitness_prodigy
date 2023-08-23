import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

String tricepsExercise =
    '''Embark on a journey to develop well-defined and robust triceps with this comprehensive triceps workout routine. By incorporating a diverse range of effective exercises, you'll shape triceps that not only radiate power but also elevate your overall upper body aesthetics. Elevate your triceps prowess and unveil arms that command attention and exude confidence.''';
String triceps1 =
    '''Bench dips are a bodyweight exercise that targets the triceps while engaging the shoulders and chest. Position your hands on a bench behind you, fingers pointing forward. Lower your body by bending your elbows, then push back up to the starting position. Bench dips are effective for building triceps strength and endurance.''';
String triceps2 =
    '''Dumbbell triceps extensions isolate the triceps muscles. Hold a dumbbell overhead with both hands, keeping your upper arms close to your head. Lower the dumbbell behind your head by bending your elbows, then extend your arms to lift the dumbbell back up. This exercise effectively targets the long head of the triceps.''';
String triceps3 =
    '''Push-ups engage the triceps, chest, and shoulders. Begin in a plank position with your hands slightly wider than shoulder-width apart. Lower your body by bending your elbows, then push back up to the starting position. Push-ups are a versatile exercise that can be modified to target the triceps more directly.''';
String triceps4 =
    '''The reverse grip bench press shifts emphasis to the triceps by changing hand positioning. Lie on a bench and grip the barbell with palms facing you. Lower the barbell to your chest, then press it back up. The reverse grip engages the triceps more prominently compared to the standard bench press.''';
String triceps5 =
    '''Attach a straight bar to a high pulley cable. Grip the bar with palms facing up and push the bar down towards your thighs, extending your elbows. This exercise targets the triceps while utilizing a reverse grip for added variety.''';
String triceps6 =
    '''Skull crushers, also known as lying triceps extensions, isolate the triceps muscles. Lie on a bench and hold a barbell or dumbbells above your forehead. Lower the weight towards your forehead by bending your elbows, then extend your arms to lift the weight back up. Skull crushers target all three heads of the triceps.''';
String triceps7 =
    '''Attach a rope handle to a high pulley cable. Grip the rope with palms facing each other and push the rope down towards your thighs, extending your elbows. Focus on squeezing your triceps at the bottom of the movement. Tricep rope pushdowns provide a unique angle for triceps activation.''';
String triceps8 =
    '''The tricep press machine provides a guided motion for isolating the triceps. Sit at the machine, grip the handles, and extend your arms downward. Slowly release the handles back up to the starting position. This exercise allows for controlled triceps contraction without the need for stabilization.''';
String triceps9 =
    '''The close-grip bench press targets the triceps by narrowing your hand placement on the barbell. Lie on a bench and grip the barbell with hands closer than shoulder-width apart. Lower the barbell to your chest, then press it back up. The close grip engages the triceps and enhances their activation.''';
String end =
    '''Incorporate these exercises into your triceps workout routine to create a comprehensive and effective training regimen. Prioritize proper form, warm-up adequately, and adjust the weights and repetitions based on your fitness level and goals. Consistency and dedication will lead to stronger, more defined triceps over time.''';

class TricepsPage extends StatelessWidget {
  const TricepsPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sculpting Powerful Triceps',
          style: GoogleFonts.lancelot(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
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
            tricepsExercise,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Bench Dips:', triceps1),
          const SizedBox(height: 15),
          _buildExercise('2. Dumbbell Triceps Extension:', triceps2),
          const SizedBox(height: 15),
          _buildExercise('3. Push Ups:', triceps3),
          const SizedBox(height: 15),
          _buildExercise('4. Reverse Grip Bench Press:', triceps4),
          const SizedBox(height: 15),
          _buildExercise('5. Reverse Grip Triceps Pushdown:', triceps5),
          const SizedBox(height: 15),
          _buildExercise('6. Skull Crushers:', triceps6),
          const SizedBox(height: 15),
          _buildExercise('7. Tricep Rope Pushdown:', triceps7),
          const SizedBox(height: 15),
          _buildExercise('8. Tricep Press Machine:', triceps8),
          const SizedBox(height: 15),
          _buildExercise('9. Close-Grip Bench Press:', triceps9),
          const SizedBox(height: 15),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          Text(
            end,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
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
