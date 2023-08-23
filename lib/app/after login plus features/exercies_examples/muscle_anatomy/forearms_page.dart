import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

String forearmsExercise =
    '''Embark on a journey to cultivate robust and well-defined forearms with this comprehensive forearm workout routine. By incorporating a diverse range of effective exercises, you'll shape forearms that not only radiate strength but also elevate your overall upper body aesthetics. Elevate your forearm prowess and unveil arms that exhibit impressive grip strength and tenacity.''';
String forearms1 =
    '''The barbell reverse biceps curl targets the brachialis and forearms. Stand with your feet hip-width apart, grip the barbell with palms facing down, and curl the barbell towards your shoulders. Lower the barbell back down with control. This exercise emphasizes the muscles on the back of the forearm.''';
String forearms2 =
    '''The wrist roller is an effective grip-strengthening exercise. Attach a weight plate to a rope, hold the rope with both hands, and roll it up by flexing your wrists. Reverse the motion to lower the weight back down. The wrist roller improves forearm endurance and grip strength.''';
String forearms3 =
    '''The behind-the-back barbell wrist curl targets the forearm flexors. Hold a barbell behind your back with palms facing up and wrists extended. Curl the barbell upwards by flexing your wrists, then lower it back down with control. This exercise enhances forearm strength and definition.''';
String forearms4 =
    '''Plate pinch exercises strengthen your grip and forearm muscles. Hold two weight plates with smooth sides facing out and pinch them together using your fingertips. Lift the plates off the ground and hold for a designated time. Plate pinches develop finger strength and coordination.''';
String forearms5 =
    '''The fat grip biceps curl involves using a thick grip attachment on a barbell or dumbbell. Perform biceps curls as usual, but the thicker grip increases forearm activation and grip engagement. This exercise contributes to overall forearm development.''';
String forearms6 =
    '''The Zottman curl combines both supination (palms up) and pronation (palms down) movements. Perform a regular biceps curl with palms facing up, then rotate your wrists to a palms-down position at the top of the movement before lowering the weight. The Zottman curl targets both forearm flexors and extensors.''';
String forearms7 =
    '''The farmer’s carry is a functional exercise that challenges grip strength and forearm endurance. Hold a heavy dumbbell or kettlebell in each hand and walk a designated distance. Focus on maintaining a tall posture and engaging your core. Farmer’s carries enhance overall grip and forearm stability.''';
String forearms8 =
    '''Bar hangs, also known as passive hangs, involve simply hanging from a pull-up bar or sturdy surface. This exercise promotes grip strength and decompresses the spine. Hang for a designated time while keeping your shoulders relaxed and engaged. Bar hangs are a simple yet effective forearm-strengthening exercise.''';
String end =
    '''Incorporate these exercises into your forearm workout routine to create a comprehensive and effective training regimen. Prioritize proper form, warm-up adequately, and adjust the weights and repetitions based on your fitness level and goals. Consistency and dedication will lead to stronger, more defined forearms and an impressive grip over time.''';

class ForearmsPage extends StatelessWidget {
  const ForearmsPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Building Resilient Forearms: Strengthening Grip',
          style: GoogleFonts.lancelot(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
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
            forearmsExercise,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Barbell Reverse Biceps Curl:', forearms1),
          const SizedBox(height: 15),
          _buildExercise('2. Wrist Roller:', forearms2),
          const SizedBox(height: 15),
          _buildExercise('3. Behind-the-Back Barbell Wrist Curl:', forearms3),
          const SizedBox(height: 15),
          _buildExercise('4. Plate Pinch:', forearms4),
          const SizedBox(height: 15),
          _buildExercise('5. Fat Grip Biceps Curl:', forearms5),
          const SizedBox(height: 15),
          _buildExercise('6. Zottman Curl:', forearms6),
          const SizedBox(height: 15),
          _buildExercise("7. Farmer's Carry:", forearms7),
          const SizedBox(height: 15),
          _buildExercise('8. Bar Hang:', forearms8),
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
