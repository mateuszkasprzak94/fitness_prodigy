import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

const String backExercises =
    '''Equip yourself with the knowledge and drive to perform each exercise with precision and purpose. As you embark on this journey, remember that your back is a canvas waiting to be shaped. Commit to this back workout regimen, and witness the transformation as your back becomes a symbol of your commitment to excellence, resilience, and self-improvement.''';
const String back1 =
    '''The deadlift is a powerful compound exercise that targets multiple muscle groups, including the back, glutes, hamstrings, and core. Begin by standing in front of a loaded barbell with your feet hip-width apart. Bend at the hips and knees, grip the barbell with your hands slightly wider than shoulder-width apart, and engage your core. Lift the barbell by driving through your heels, keeping your back straight, and extending your hips. As you stand up, pull your shoulders back and push your hips forward. Lower the barbell back to the ground with control. The deadlift is a fundamental movement for building overall strength and developing a strong posterior chain.''';
const String back2 =
    '''The bent-over row is an effective compound exercise that targets the upper back muscles, including the lats and rhomboids. Hold a barbell or dumbbells in front of you with an overhand grip. Bend at the hips while keeping your back straight, creating a slight angle. Pull the weight towards your lower chest by retracting your shoulder blades and bending your elbows. Lower the weight back down with control. The bent-over row helps improve posture and strengthens the muscles responsible for pulling movements.''';
const String back3 =
    '''Pull-ups are a bodyweight exercise that primarily target the upper back, especially the latissimus dorsi (lats). Hang from a pull-up bar with your palms facing away from you and your hands wider than shoulder-width apart. Engage your lats and pull your body up until your chin clears the bar. Lower yourself back down with control. Pull-ups are an excellent measure of upper body strength and can be adapted to different fitness levels.''';
const String back4 =
    '''The T-bar row is a compound exercise that targets the middle and upper back muscles. Secure one end of a barbell in a landmine attachment or a corner of the room. Load the opposite end with weight plates. Straddle the loaded end of the barbell, grip the handles, and hinge at the hips. Pull the barbell towards your lower chest by retracting your shoulder blades and bending your elbows. Lower the barbell back down under control. The T-bar row offers a unique range of motion and helps build a strong and defined back.''';
const String back5 =
    '''The seated row is an isolation exercise that primarily targets the middle and lower back muscles. Sit at a rowing machine with your feet on the footrests and grasp the handles with a neutral grip. Keep your back straight and pull the handles towards your torso, squeezing your shoulder blades together. Slowly extend your arms to return to the starting position. The seated row is effective for targeting the back muscles while minimizing strain on the lower back.''';
const String back6 =
    '''The single-arm Smith machine row is a unilateral exercise that isolates the back muscles. Set a Smith machine barbell to an appropriate height. Stand next to the machine and grip the barbell with one hand, palm facing in. Bend at the hips and knees, keeping your back straight, and pull the barbell towards your hip. Lower it back down with control. This exercise helps correct muscle imbalances and enhances overall back strength.''';
const String back7 =
    '''The lat pull-down is an isolation exercise that targets the latissimus dorsi (lats) muscles. Sit at a lat pull-down machine and grip the bar with an overhand grip, slightly wider than shoulder-width. Pull the bar down towards your chest while arching your back slightly and squeezing your shoulder blades together. Slowly release the bar back up. The lat pull-down is effective for building width in the upper back.''';
const String back8 =
    '''The single-arm dumbbell row is an isolation exercise that targets the lats, rhomboids, and upper back. Place one knee and hand on a bench, with the other foot on the ground. Hold a dumbbell in the opposite hand, allowing your arm to hang straight down. Pull the dumbbell towards your hip by retracting your shoulder blade and bending your elbow. Lower the dumbbell back down with control. This exercise helps improve unilateral strength and balance in the back muscles.''';
const String end =
    '''Incorporate these exercises into your back workout routine to create a well-rounded and effective training regimen. As always, prioritize proper form, warm-up adequately, and adjust the weights and repetitions based on your fitness level and goals. Consistency and dedication will lead to a stronger, more defined back over time.''';

class BackPage extends StatelessWidget {
  const BackPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Unlock Your Back's Full Potential",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Text(
                    backExercises,
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 15),
                  _buildExercise('1. Deadlift:', back1),
                  const SizedBox(height: 15),
                  _buildExercise('2. Bent-Over Row:', back2),
                  const SizedBox(height: 15),
                  _buildExercise('3. Pull-Up:', back3),
                  const SizedBox(height: 15),
                  _buildExercise('4. T-Bar Row:', back4),
                  const SizedBox(height: 15),
                  _buildExercise('5. Seated Row:', back5),
                  const SizedBox(height: 15),
                  _buildExercise('6. Single-Arm Smith Machine Row:', back6),
                  const SizedBox(height: 15),
                  _buildExercise('7. Lat Pull-Down:', back7),
                  const SizedBox(height: 15),
                  _buildExercise('8. Single-Arm Dumbbell Row:', back8),
                  const SizedBox(height: 15),
                  const Text(
                    end,
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
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
}
