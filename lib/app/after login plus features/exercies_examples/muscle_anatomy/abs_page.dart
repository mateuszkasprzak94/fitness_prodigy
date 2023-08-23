import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

String absExercise =
    '''Embark on a journey to develop a robust and well-defined core with this comprehensive core workout routine. By incorporating a diverse range of effective exercises, you'll shape abdominal muscles that not only radiate power but also elevate your overall physique. Elevate your core prowess and unveil a midsection that commands attention and exudes confidence.''';
String abs1 =
    '''The cable crunch targets the rectus abdominis (frontal core muscles) by using a cable machine. Kneel facing the machine, grasp the rope handles above your head, and flex your spine forward to contract your abs. Slowly return to the starting position. Cable crunches help strengthen and define the upper abdominal muscles.''';
String abs2 =
    '''Machine crunches provide resistance to target the rectus abdominis. Sit at a crunch machine, place your hands on the side handles, and contract your abs to flex your spine forward. Slowly return to the starting position. Machine crunches effectively isolate and engage the core muscles.''';
String abs3 =
    '''Landmine twists engage the obliques and core muscles. Insert one end of a barbell into a landmine attachment or a corner of the room. Hold the opposite end of the barbell with both hands at chest height and rotate your torso from side to side. Landmine twists enhance rotational core strength.''';
String abs4 =
    '''Cable side bends target the obliques by using a cable machine. Attach a handle to a high pulley cable, hold the handle with one hand, and bend laterally to the side. Slowly return to an upright position. Cable side bends enhance oblique definition and stability.''';
String abs5 =
    '''Hanging knee raises target the lower abs. Hang from a pull-up bar with your palms facing away from you, and lift your knees towards your chest. Lower your knees back down with control. Hanging knee raises effectively engage the lower abdominal muscles.''';
String abs6 =
    '''Hanging straight leg raises target the lower abs and hip flexors. Hang from a pull-up bar and lift your legs straight up, keeping them extended. Lower your legs back down with control. This exercise challenges core strength and stability.''';
String abs7 =
    '''Hanging windshield wipers target the obliques and core muscles. Hang from a pull-up bar and rotate your legs from side to side in a controlled motion. This advanced exercise enhances rotational core strength and stability.''';
String abs8 =
    '''The abs wheel rollout is an effective exercise for the entire core. Kneel on the ground and hold an ab wheel in front of you. Roll the wheel forward while keeping your core engaged, then roll it back to the starting position. Abs wheel rollouts strengthen the core muscles and improve stability.''';
String abs9 =
    '''Barbell rollouts are similar to abs wheel rollouts but use a barbell with weight plates. Kneel on the ground and grip the barbell with hands slightly wider than shoulder-width. Roll the barbell forward while maintaining a straight posture, then roll it back to the starting position. Barbell rollouts challenge core strength and control.''';
String abs10 =
    '''The Pallof press is a cable exercise that targets the core's anti-rotation stability. Attach a handle to a cable machine, stand sideways to the machine, and press the handle away from your body. Maintain a strong core as you resist the cable's pull. Pallof presses enhance core stability and strength.''';
String abs11 =
    '''Cable wood chops engage the obliques and core muscles in a diagonal movement. Attach a handle to a high pulley cable, stand sideways to the machine, and pull the handle diagonally across your body. Slowly return to the starting position. Cable wood chops improve rotational core strength and coordination.''';
String abs12 =
    '''Stability ball tucks target the lower abs. Start in a push-up position with your feet on a stability ball. Roll the ball towards your chest by contracting your lower abs, then push the ball back to the starting position. Stability ball tucks challenge core stability and control.''';
String end =
    '''Incorporate these exercises into your core workout routine to create a comprehensive and effective training regimen. Prioritize proper form, warm-up adequately, and adjust the intensity based on your fitness level and goals. Consistency and dedication will lead to a stronger, more defined core over time.''';

class AbsPage extends StatelessWidget {
  const AbsPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sculpting Strong Core: Unveiling Abdominal Power',
          style: GoogleFonts.lancelot(
              fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold),
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
            absExercise,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Cable Crunch:', abs1),
          const SizedBox(height: 15),
          _buildExercise('2. Machine Crunch:', abs2),
          const SizedBox(height: 15),
          _buildExercise('3. Landmine Twists:', abs3),
          const SizedBox(height: 15),
          _buildExercise('4. Cable Side Bend:', abs4),
          const SizedBox(height: 15),
          _buildExercise('5. Hanging Knee Raise:', abs5),
          const SizedBox(height: 15),
          _buildExercise('6. Hanging Straight Leg Raise:', abs6),
          const SizedBox(height: 15),
          _buildExercise('7. Hanging Windshield Wiper:', abs7),
          const SizedBox(height: 15),
          _buildExercise('8. Abs Wheel Rollout:', abs8),
          const SizedBox(height: 15),
          _buildExercise('9. Barbell Rollout:', abs9),
          const SizedBox(height: 15),
          _buildExercise('10. Pallof Press:', abs10),
          const SizedBox(height: 15),
          _buildExercise('11. Cable Wood Chop:', abs11),
          const SizedBox(height: 15),
          _buildExercise('12. Stability Ball Tuck:', abs12),
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
