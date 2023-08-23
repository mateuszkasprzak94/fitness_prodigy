import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

String bicepsExercise =
    '''Embark on a journey to develop robust and well-sculpted biceps with this comprehensive biceps workout routine. By incorporating a diverse range of effective exercises, you'll shape biceps that not only radiate power but also elevate your overall upper body aesthetics. Elevate your biceps prowess and unveil arms that command attention and exude confidence.''';
String biceps1 =
    '''Barbell curls are a quintessential biceps exercise that engages the entire biceps muscle. Stand with your feet hip-width apart, grip the barbell with palms facing up, and curl the barbell towards your shoulders. Lower the barbell back down with control. Barbell curls serve as a foundational movement for building overall biceps strength and size.''';
String biceps2 =
    '''Bar cable curls ensure consistent tension on the biceps throughout the movement. Attach a straight bar to a low pulley cable, grip the bar with palms facing up, and curl the bar towards your shoulders. Lower the bar back down under control. This exercise effectively isolates the biceps and intensifies muscle contraction.''';
String biceps3 =
    '''EZ bar preacher curls focus on the biceps while minimizing wrist strain. Sit or stand at a preacher curl bench, grip the EZ bar with an underhand grip, and curl the bar towards your shoulders. Lower the bar back down with control. The preacher curl bench provides stability, isolating the biceps for a more focused contraction.''';
String biceps4 =
    '''Incline dumbbell curls prioritize the long head of the biceps. Lie back on an incline bench, hold a dumbbell in each hand with palms facing up, and curl the dumbbells towards your shoulders. Lower the dumbbells back down with control. This exercise generates a stretch in the biceps for heightened muscle engagement.''';
String biceps5 =
    '''One-arm dumbbell preacher curls isolate each bicep independently. Sit or stand at a preacher curl bench, hold a dumbbell in one hand with your arm fully extended, and curl the dumbbell towards your shoulder. Lower the dumbbell back down with control. This exercise addresses muscle imbalances and enhances bicep symmetry.''';
String biceps6 =
    ''' Reverse barbell curls target the brachialis and forearms alongside the biceps. Stand with your feet hip-width apart, grip the barbell with palms facing down, and curl the barbell towards your shoulders. Lower the barbell back down with control. Reverse barbell curls contribute to overall arm strength and definition.''';
String biceps7 =
    '''Seated dumbbell curls isolate the biceps while minimizing momentum. Sit on a bench with back support, hold a dumbbell in each hand with palms facing up, and curl the dumbbells towards your shoulders. Lower the dumbbells back down with control. Seated dumbbell curls enhance bicep isolation and promote precise contraction.''';
String biceps8 =
    '''Standing biceps cable curls ensure consistent resistance throughout the range of motion. Attach a straight bar to a high pulley cable, grip the bar with palms facing up, and curl the bar towards your shoulders. Lower the bar back down with control. This exercise effectively activates the biceps and contributes to muscle definition.''';
String biceps9 =
    '''Preacher curls target the biceps while providing strict form and isolation. Sit at a preacher curl bench and place your arms on the angled pad. Grip the barbell or dumbbell with palms facing up and curl it towards your shoulders. Lower the weight back down with control. The preacher curl isolates the biceps, emphasizing peak contraction.''';
String end =
    '''Incorporate these exercises into your biceps workout routine to craft a comprehensive and effective training regimen. Prioritize proper form, warm-up adequately, and adjust the weights and repetitions based on your fitness level and goals. Consistency and dedication will lead to stronger, more defined biceps over time.''';

class BicepsPage extends StatelessWidget {
  const BicepsPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crafting Strength and Definition',
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
            bicepsExercise,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15),
          _buildExercise('1. Barbell Curls:', biceps1),
          const SizedBox(height: 15),
          _buildExercise('2. Bar Cable Curls:', biceps2),
          const SizedBox(height: 15),
          _buildExercise('3. EZ Bar Preacher Curls:', biceps3),
          const SizedBox(height: 15),
          _buildExercise('4. Incline Dumbbell Curls:', biceps4),
          const SizedBox(height: 15),
          _buildExercise('5. One-arm Dumbbell Preacher Curls:', biceps5),
          const SizedBox(height: 15),
          _buildExercise('6. Reverse Barbell Curls:', biceps6),
          const SizedBox(height: 15),
          _buildExercise('7. Seated Dumbbell Curls:', biceps7),
          const SizedBox(height: 15),
          _buildExercise('8. Standing Biceps Cable Curl:', biceps8),
          const SizedBox(height: 15),
          _buildExercise('9. Preacher Curl:', biceps9),
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
