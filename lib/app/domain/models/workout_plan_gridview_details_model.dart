import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:flutter/material.dart';

class WorkoutGridViewDetails {
  WorkoutGridViewDetails({
    required this.title,
    required this.iconImage,
    required this.gradientsColor,
    required this.start,
    required this.firstTitle,
    required this.secondTitle,
    required this.warmup,
    required this.warmupText,
    required this.partOne,
    required this.partOneText,
    required this.partTwo,
    required this.partTwoText,
    required this.partThree,
    required this.partThreeText,
    required this.partFour,
    required this.partFourText,
    required this.partFive,
    required this.partFiveText,
    required this.partSix,
    required this.partSixText,
    required this.partSeven,
    required this.partSevenText,
    required this.partEight,
    required this.partEightText,
    required this.cooldown,
    required this.cooldownText,
    required this.end,
    this.assetColor,
  });

  final String title;
  final String iconImage;
  final List<Color> gradientsColor;
  final String start;
  final String firstTitle;
  final String secondTitle;
  final String warmup;
  final String warmupText;
  final String partOne;
  final String partOneText;
  final String partTwo;
  final String partTwoText;
  final String partThree;
  final String partThreeText;
  final String partFour;
  final String partFourText;
  final String partFive;
  final String partFiveText;
  final String partSix;
  final String partSixText;
  final String partSeven;
  final String partSevenText;
  final String partEight;
  final String partEightText;
  final String cooldown;
  final String cooldownText;
  final String end;
  final Color? assetColor;
}

final List<WorkoutGridViewDetails> workoutGridViewDetails = [
  WorkoutGridViewDetails(
    title: 'Beginner Workout',
    iconImage: 'assets/images/star.png',
    gradientsColor: kHomeGradient,
    start:
        "Here's a simple and well-rounded 4-week beginner workout plan that targets different muscle groups while gradually increasing intensity. Remember to include warm-up and cool-down sessions in each workout.",
    firstTitle: 'Weeks 1-2: Full Body Beginner Workout',
    secondTitle: 'Weeks 3-4: Progressing and Adding Variations',
    warmup: '',
    warmupText: '',
    partOne: 'Day 1: Upper Body Focus',
    partOneText: '''
1. Push Ups - 3 sets of 8-10 reps
2. Dumbbell Rows - 3 sets of 8-10 reps
3. Seated Dumbbell Shoulder Press - 3 sets of 8-10 reps
4. Dumbbell Bicep Curls - 3 sets of 10-12 reps''',
    partTwo: 'Day 2: Lower Body Focus',
    partTwoText: '''
1. Bodyweight Squats - 3 sets of 12-15 reps
2. Walking Lunges - 3 sets of 10-12 reps per leg
3. Leg Press - 3 sets of 10-12 reps
4. Calf Raises - 3 sets of 12-15 reps''',
    partThree: 'Day 3: Core and Cardio',
    partThreeText: '''1. Hanging Leg Raises - 3 sets of 8-10 reps
2. Stability Ball Plank - 3 sets of 20-30 seconds
3. Light Cardio - 20-25 minutes''',
    partFour: 'Day 1: Upper Body Focus',
    partFourText: '''
1. Incline Push Ups (using an elevated surface) - 3 sets of 10-12 reps
2. Barbell Rows (if available) - 3 sets of 8-10 reps
3. Seated Dumbbell Shoulder Press - 3 sets of 10-12 reps
4. Dumbbell Bicep Curls - 3 sets of 12-15 reps''',
    partFive: 'Day 2: Lower Body Focus',
    partFiveText: '''
1. Goblet Squats - 3 sets of 10-12 reps
2. Bulgarian Split Squats - 3 sets of 8-10 reps per leg
3. Leg Press - 3 sets of 12-15 reps
4. Calf Raises - 3 sets of 15-20 reps''',
    partSix: 'Day 3: Core and Cardio',
    partSixText: '''
1. Hanging Leg Raises - 3 sets of 8-10 reps
2. Stability Ball Plank - 3 sets of 20-30 seconds
3. Light Cardio - 20-25 minutes''',
    partSeven: '',
    partSevenText: '',
    partEight: '',
    partEightText: '',
    cooldown: '',
    cooldownText: '',
    end:
        "Remember, safety and proper form are essential, especially for beginners. Start with lighter weights and focus on mastering the correct technique. Additionally, progress should be gradual to prevent overtraining and injuries. You can also consider including rest days in the plan for recovery.",
  ),
  WorkoutGridViewDetails(
    title: 'Intermediate Workout',
    iconImage: 'assets/images/star2.png',
    gradientsColor: kHomeGradient,
    start:
        "Here's a 4-week intermediate workout plan that builds upon the beginner plan, adding more complexity and intensity to challenge people who have progressed beyond the beginner level. As always, remember to include warm-up and cool-down sessions in each workout.",
    firstTitle: 'Weeks 1-2: Intermediate Strength and Hypertrophy',
    secondTitle: 'Weeks 3-4: Progressive Overload and Intensity',
    warmup: '',
    warmupText: '',
    partOne: 'Day 1: Upper Body Push',
    partOneText: '''1. Barbell Bench Press - 3 sets of 8-10 reps
2. Dumbbell Rows - 3 sets of 8-10 reps
3. Seated Dumbbell Shoulder Press - 3 sets of 8-10 reps
4. Dips - 3 sets of 10-12 reps''',
    partTwo: 'Day 2: Lower Body',
    partTwoText: '''1. Back Squats - 4 sets of 8-10 reps
2. Romanian Deadlift - 3 sets of 8-10 reps
3. Bulgarian Split Squats - 3 sets of 10-12 reps per leg
4. Calf Raises - 3 sets of 12-15 reps''',
    partThree: 'Day 3: Core and Cardio',
    partThreeText: '''1. Plank Variations - 3 sets of 20-30 seconds each
2. Hanging Leg Raises - 3 sets of 10-12 reps
3. Cardio Intervals (e.g., sprints, jump rope) - 15-20 minutes''',
    partFour: 'Day 1: Upper Body Pull',
    partFourText: '''1. Pull-Ups or Assisted Pull-Ups - 3 sets of 6-8 reps
2. Barbell Rows - 3 sets of 8-10 reps
3. Arnold Press - 3 sets of 8-10 reps
4. Barbell Bicep Curls - 3 sets of 10-12 reps''',
    partFive: 'Day 2: Lower Body',
    partFiveText: '''1. Front Squats - 4 sets of 6-8 reps
2. Deadlifts (conventional or sumo) - 3 sets of 6-8 reps
3. Lunges with Dumbbells - 3 sets of 10-12 reps per leg
4. Seated Calf Raises - 3 sets of 12-15 reps''',
    partSix: 'Day 3: Core and Cardio',
    partSixText: '''1. Hanging Windshield Wipers - 3 sets of 8-10 reps per side
2. Russian Twists - 3 sets of 12-15 reps per side
3. High-Intensity Interval Training (HIIT) - 20-25 minutes''',
    partSeven: '',
    partSevenText: '',
    partEight: '',
    partEightText: '',
    cooldown: '',
    cooldownText: '',
    end:
        "The intermediate workout plan focuses on building strength, hypertrophy, and increasing intensity. At this level you should have a solid foundation of proper form and technique. Remember to track your progress and gradually increase weights as they feel comfortable.",
  ),
  WorkoutGridViewDetails(
    title: 'Advanced Workout',
    iconImage: 'assets/images/star3.png',
    gradientsColor: kHomeGradient,
    start:
        "Here's a 4-week advanced workout plan that is designed for individuals with a high level of fitness experience. This plan incorporates challenging exercises and higher intensity to help push limits. Remember to prioritize safety, proper form, and adequate recovery. As always, include warm-up and cool-down sessions in each workout.",
    firstTitle: 'Weeks 1-2: Advanced Strength and Conditioning',
    secondTitle: 'Weeks 3-4: Hypertrophy and Power',
    warmup: '',
    warmupText: '',
    partOne: 'Day 1: Upper Body Strength',
    partOneText: '''1. Weighted Pull-Ups - 4 sets of 6-8 reps
2. Barbell Bench Press - 4 sets of 6-8 reps
3. Standing Military Press - 4 sets of 6-8 reps
4. Close-Grip Bench Press - 3 sets of 8-10 reps''',
    partTwo: 'Day 2: Lower Body Power',
    partTwoText: '''1. Back Squats - 4 sets of 5-6 reps
2. Deadlifts - 4 sets of 5-6 reps
3. Box Jumps - 3 sets of 8-10 reps
4. Bulgarian Split Squats with Dumbbells - 3 sets of 8-10 reps per leg''',
    partThree: 'Day 3: Core and Conditioning',
    partThreeText: '''1. Hanging Windshield Wipers - 3 sets of 6-8 reps per side
2. Dragon Flags - 3 sets of 6-8 reps
3. Sprint Intervals - 8-10 rounds (30 seconds sprint, 60 seconds rest)''',
    partFour: 'Day 1: Upper Body Hypertrophy',
    partFourText: '''1. Weighted Dips - 4 sets of 8-10 reps
2. Barbell Rows - 4 sets of 8-10 reps
3. Standing Arnold Press - 4 sets of 8-10 reps
4. Preacher Curls - 3 sets of 10-12 reps''',
    partFive: 'Day 2: Lower Body Power',
    partFiveText: '''1. Front Squats - 4 sets of 5-6 reps
2. Romanian Deadlifts - 4 sets of 5-6 reps
3. Plyometric Lunges - 3 sets of 8-10 reps per leg
4. Standing Calf Raises - 4 sets of 10-12 reps''',
    partSix: 'Day 3: Core and Conditioning',
    partSixText: '''1. Hanging Straight Leg Raises - 3 sets of 8-10 reps
2. Turkish Get-Ups - 3 sets of 4-5 reps per side
3. Hill Sprints - 6-8 rounds (60 seconds sprint uphill, 90 seconds rest)''',
    partSeven: '',
    partSevenText: '',
    partEight: '',
    partEightText: '',
    cooldown: '',
    cooldownText: '',
    end:
        'The advanced workout plan is designed to challenge experienced individuals with complex movements and high-intensity training. Remember the importance of listening to your bodies, adjusting weights as needed, and ensuring adequate recovery. Track your progress and adjust the plan based on individual goals and responses.',
  ),
  WorkoutGridViewDetails(
    title: 'Chest',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    assetColor: Colors.white,
    start:
        'This workout focuses on targeting the chest muscles from different angles and utilizing a variety of movements. Remember to warm up before starting the workout and cool down afterwards.',
    firstTitle: 'Chest Workout: Sculpting Strong Pectorals',
    secondTitle: '',
    warmup: 'Warm-Up:',
    warmupText:
        'Perform 5-10 minutes of light cardio (e.g., brisk walking, easy cycling) to increase blood flow to the muscles and prepare the body for the workout.',
    partOne: 'Exercise 1: Flat Bench Press',
    partOneText: '''Sets: 4
Reps: 8-10
Rest: 2 minutes
Description: Lie on a flat bench, grip the barbell slightly wider than shoulder-width, and lower the barbell to your chest. Press the barbell back up to the starting position. Flat bench press targets the overall chest muscles.''',
    partTwo: 'Exercise 2: Incline Bench Press',
    partTwoText: '''Sets: 4
Reps: 8-10
Rest: 2 minutes
Description: Lie on an incline bench, grip the barbell slightly wider than shoulder-width, and lower the barbell to your upper chest. Press the barbell back up to the starting position. Incline bench press emphasizes the upper chest.''',
    partThree: 'Exercise 3: Decline Bench Press',
    partThreeText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Lie on a decline bench, grip the barbell slightly wider than shoulder-width, and lower the barbell to your lower chest. Press the barbell back up to the starting position. Decline bench press targets the lower chest.''',
    partFour: 'Exercise 4: Cable Crossover',
    partFourText: '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Stand between two high pulley cables, hold a handle in each hand, and cross your arms in front of your chest. Pull the handles towards the center of your chest, focusing on squeezing the chest muscles at the end of the movement.''',
    partFive: 'Exercise 5: Chest Dips',
    partFiveText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use parallel bars or dip bars. Lower your body by bending your elbows, keeping your torso slightly forward. Push through your palms to return to the starting position. Chest dips target the lower chest and triceps.''',
    partSix: 'Exercise 6: Dumbbell Pull-Over',
    partSixText: '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Lie on a bench, hold a dumbbell with both hands overhead, and lower the dumbbell behind your head. Lift the dumbbell back to the starting position. Dumbbell pull-overs engage the chest and serratus anterior.''',
    partSeven: '',
    partSevenText: '',
    partEight: '',
    partEightText: '',
    cooldown: 'Cool-Down:',
    cooldownText:
        'Stretch the chest and shoulders for 5-10 minutes to promote flexibility and reduce muscle tension.',
    end:
        'This chest workout provides a comprehensive routine targeting various areas of the chest. Make sure to use appropriate weights and focus on maintaining proper form throughout the workout. As always, remember to listen to your bodie and adjust the workout intensity as needed.',
  ),
  WorkoutGridViewDetails(
    title: 'Back',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    assetColor: Colors.white,
    start:
        'This workout is designed to target different areas of the back and promote overall strength and development. Remember to warm up before starting the workout and cool down afterwards.',
    firstTitle: 'Back Workout: Strengthening a Powerful Back',
    secondTitle: '',
    warmup: 'Warm-Up:',
    warmupText:
        'Perform 5-10 minutes of light cardio to increase blood flow to the muscles and prepare the body for the workout.',
    partOne: 'Exercise 1: Deadlift',
    partOneText: '''Sets: 4
Reps: 5-6
Rest: 2-3 minutes
Description: Perform deadlifts with proper form, lifting the barbell from the ground to a standing position. Deadlifts engage the entire back, particularly the lower back, lats, and traps.''',
    partTwo: 'Exercise 2: Bent-Over Row',
    partTwoText: '''Sets: 4
Reps: 8-10
Rest: 2 minutes
Description: Hold a barbell with an overhand grip, bend at the hips while keeping your back straight, and row the barbell to your lower abdomen. Lower the barbell with control. Bent-over rows target the upper back and lats.''',
    partThree: 'Exercise 3: Pull-Ups',
    partThreeText: '''Sets: 3
Reps: 6-8
Rest: 1.5 minutes
Description: Perform pull-ups using a wide grip. Hang from a bar and pull your body up until your chin is above the bar. Lower your body with control. Pull-ups emphasize the upper back and lats.''',
    partFour: 'Exercise 4: T-Bar Row',
    partFourText: '''Sets: 3
Reps: 8-10
Rest: 1.5 minutes
Description: Use a T-bar row machine or landmine attachment. Hold the handles and row the weight towards your torso, squeezing your shoulder blades together. T-bar rows target the middle back.''',
    partFive: 'Exercise 5: Seated Row',
    partFiveText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use a seated row machine. Sit down, hold the handles, and pull them towards your torso while keeping your back straight. Seated rows engage the upper back and lats.''',
    partSix: 'Exercise 6: Single-Arm Smith Machine Row',
    partSixText: '''Sets: 3
Reps: 12-15 per arm
Rest: 1.5 minutes
Description: Use a Smith machine with one end of the barbell. Place a bench next to the machine, rest one knee on the bench, and row the barbell towards your hip. Alternate arms. This exercise targets the lats and rear deltoids.''',
    partSeven: 'Exercise 7: Lat Pull-Down',
    partSevenText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use a lat pull-down machine. Grip the bar wider than shoulder-width, pull the bar down to your chest, and slowly release it back up. Lat pull-downs engage the lats and upper back.''',
    partEight: 'Exercise 8: Single-Arm Dumbbell Row',
    partEightText: '''Sets: 3
Reps: 10-12 per arm
Rest: 1.5 minutes
Description: Hold a dumbbell in one hand, place the opposite knee and hand on a bench, and row the dumbbell towards your hip. Single-arm dumbbell rows target the lats and rear deltoids.''',
    cooldown: 'Cool-Down:',
    cooldownText:
        'Stretch the back and shoulders for 5-10 minutes to promote flexibility and reduce muscle tension.',
    end:
        'This back workout provides a comprehensive routine targeting various areas of the back. Be sure to use appropriate weights and maintain proper form throughout the workout. As always, remember to listen to your bodie and adjust the workout intensity as needed.',
  ),
  WorkoutGridViewDetails(
    title: 'Shoulders',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    assetColor: Colors.white,
    start:
        'This workout is designed to target different parts of the shoulders for a well-rounded and sculpted shoulder development. As always, include warm-up and cool-down sessions in each workout.',
    firstTitle: 'Shoulders Workout: Sculpting Strong Shoulders',
    secondTitle: '',
    warmup: 'Warm-Up:',
    warmupText:
        'Perform 5-10 minutes of light cardio and dynamic shoulder stretches to increase blood flow to the muscles and prepare the shoulders for the workout.',
    partOne: 'Exercise 1: Overhead Press',
    partOneText: '''Sets: 4
Reps: 6-8
Rest: 2-3 minutes
Description: Use a barbell or dumbbells. Press the weight overhead while standing, then lower it back down to shoulder level. Overhead presses target the entire shoulder complex.''',
    partTwo: 'Exercise 2: Seated Dumbbell Shoulder Press',
    partTwoText: '''Sets: 4
Reps: 8-10
Rest: 2 minutes
Description: Sit on a bench, hold a dumbbell in each hand at shoulder height, and press the dumbbells overhead. Lower them back down with control. Seated dumbbell shoulder presses focus on the front and middle deltoids.''',
    partThree: 'Exercise 3: Barbell Front Raise',
    partThreeText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a barbell with an overhand grip in front of your thighs. Lift the barbell straight up to shoulder height, then lower it back down. Barbell front raises target the front deltoids.''',
    partFour: 'Exercise 4: Dumbbell Lateral Raise',
    partFourText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a dumbbell in each hand at your sides. Lift the dumbbells out to the sides until they reach shoulder level, then lower them back down. Dumbbell lateral raises target the side deltoids.''',
    partFive: 'Exercise 5: Barbell Upright Row',
    partFiveText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a barbell with an overhand grip in front of your thighs. Lift the barbell straight up towards your chin, keeping it close to your body. Barbell upright rows target the front and side deltoids.''',
    partSix: 'Exercise 6: Reverse Dumbbell Flyes',
    partSixText: '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Bend at the hips while holding a dumbbell in each hand. Raise the dumbbells out to the sides in a reverse fly motion, engaging the rear deltoids. Lower the dumbbells back down with control.''',
    partSeven: 'Exercise 7: Face Pull',
    partSevenText: '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Attach a rope handle to a cable machine at chest height. Pull the rope towards your face while keeping your elbows high, squeezing your rear deltoids at the end of the movement.''',
    partEight: 'Exercise 8: Barbell Rear Delt Row',
    partEightText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use a barbell with a pronated grip. Bend at the hips while holding the barbell, and row it towards your hips, focusing on the rear deltoids.''',
    cooldown: 'Cool-Down:',
    cooldownText:
        'Stretch the shoulders and upper body for 5-10 minutes to promote flexibility and reduce muscle tension.',
    end:
        'This shoulders workout provides a comprehensive routine targeting various parts of the shoulders. Be sure to use appropriate weights, maintain proper form, and focus on mind-muscle connection. As always, remember to listen to your bodie and adjust the workout intensity as needed.',
  ),
  WorkoutGridViewDetails(
    title: 'Biceps',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    assetColor: Colors.white,
    start:
        'This workout focuses on targeting the biceps muscles from different angles to help users achieve well-defined and sculpted arms. As always, include warm-up and cool-down sessions in each workout.',
    firstTitle: 'Biceps Workout: Sculpting Strong Biceps',
    secondTitle: '',
    warmup: 'Warm-Up:',
    warmupText:
        'Perform 5-10 minutes of light cardio and dynamic arm stretches to increase blood flow to the muscles and prepare the arms for the workout.',
    partOne: 'Exercise 1: Barbell Curls',
    partOneText: '''Sets: 4
Reps: 8-10
Rest: 2 minutes
Description: Hold a barbell with an underhand grip, curl the barbell towards your shoulders, and then lower it back down. Barbell curls target the biceps muscles.''',
    partTwo: 'Exercise 2: Bar Cable Curls',
    partTwoText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Attach a straight bar to a low cable pulley. Stand facing the cable machine and curl the bar upwards using a supinated grip. Bar cable curls emphasize biceps activation.''',
    partThree: 'Exercise 3: EZ Bar Preacher Curls',
    partThreeText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use an EZ bar attachment on a preacher curl bench. Grip the EZ bar with an underhand grip and curl the barbell towards your shoulders. EZ bar preacher curls isolate the biceps.''',
    partFour: 'Exercise 4: Incline Dumbbell Curls',
    partFourText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Sit on an incline bench and hold a dumbbell in each hand with your arms fully extended. Curl the dumbbells towards your shoulders while keeping your upper arms stationary. Incline dumbbell curls target the biceps peak.''',
    partFive: 'Exercise 5: One-arm Dumbbell Preacher Curls',
    partFiveText: '''Sets: 3 per arm
Reps: 10-12
Rest: 1.5 minutes
Description: Use a preacher curl bench and hold a dumbbell in one hand. Place your upper arm against the bench and curl the dumbbell towards your shoulder. One-arm dumbbell preacher curls isolate each bicep individually.''',
    partSix: 'Exercise 6: Reverse Barbell Curls',
    partSixText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a barbell with an overhand grip, curl the barbell towards your shoulders, and then lower it back down. Reverse barbell curls target the brachialis and forearms.''',
    partSeven: 'Exercise 7: Seated Dumbbell Curls',
    partSevenText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Sit on a bench and hold a dumbbell in each hand with your arms fully extended. Curl the dumbbells towards your shoulders while keeping your upper arms stationary. Seated dumbbell curls provide a different angle of biceps engagement.''',
    partEight: 'Exercise 8: Standing Biceps Cable Curl',
    partEightText: '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Attach a straight bar to a high cable pulley. Stand facing the cable machine and curl the bar upwards using a supinated grip. Standing biceps cable curls provide constant tension on the biceps.''',
    cooldown: 'Cool-Down:',
    cooldownText:
        'Stretch the biceps and arms for 5-10 minutes to promote flexibility and reduce muscle tension.',
    end:
        'This biceps workout provides a comprehensive routine targeting various aspects of the biceps muscles. Be sure to use appropriate weights, maintain proper form, and focus on mind-muscle connection. As always, remember to listen to your bodie and adjust the workout intensity as needed.',
  ),
  WorkoutGridViewDetails(
    title: 'Triceps',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    assetColor: Colors.white,
    start:
        'This workout will help effectively target your triceps for strength and definition. As always, include warm-up and cool-down sessions in each workout.',
    firstTitle: 'Triceps-Focused Workout: Sculpting Strong Triceps',
    secondTitle: '',
    warmup: 'Warm-Up:',
    warmupText:
        'Perform 5-10 minutes of light cardio and dynamic arm stretches to prepare the triceps and increase blood flow.',
    partOne: 'Exercise 1: Bench Dips',
    partOneText: '''Sets: 4
Reps: 10-12
Rest: 2 minutes
Description: Place your hands on a bench behind you, lower your body by bending your elbows, and then push your body back up. Bench dips target the triceps.''',
    partTwo: 'Exercise 2: Dumbbell Triceps Extension',
    partTwoText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a dumbbell with both hands above your head, lower the dumbbell behind your head, and then extend your arms back up. Dumbbell triceps extensions isolate the triceps.''',
    partThree: 'Exercise 3: Push-Ups',
    partThreeText: '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Perform push-ups with your hands positioned slightly narrower than shoulder-width. Lower your body by bending your elbows and then push your body back up. Push-ups engage the chest, shoulders, and triceps.''',
    partFour: 'Exercise 4: Reverse Grip Bench Press',
    partFourText: '''Sets: 4
Reps: 8-10
Rest: 2 minutes
Description: Lie on a bench and grip the barbell with an underhand grip, lower the barbell to your chest, and then press it back up. Reverse grip bench press emphasizes the triceps.''',
    partFive: 'Exercise 5: Reverse Grip Triceps Pushdown',
    partFiveText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Attach a straight bar to a high cable pulley. Stand facing the cable machine and push the bar downwards using an underhand grip. Reverse grip triceps pushdowns isolate the triceps.''',
    partSix: 'Exercise 6: Skull Crushers',
    partSixText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Lie on a bench, hold an EZ bar with a narrow grip, lower the bar towards your forehead, and then extend your arms back up. Skull crushers target the long head of the triceps.''',
    partSeven: 'Exercise 7: Tricep Rope Pushdown',
    partSevenText: '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Attach a rope handle to a high cable pulley. Stand facing the cable machine and push the rope downwards while keeping your upper arms stationary. Tricep rope pushdowns provide a continuous tension on the triceps.''',
    partEight: 'Exercise 8: Tricep Press Machine',
    partEightText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use a tricep press machine. Sit down, hold the handles, and extend your arms downwards. Then, flex your triceps to push the handles back up.''',
    cooldown: 'Cool-Down:',
    cooldownText:
        'Stretch the triceps and arms for 5-10 minutes to promote flexibility and reduce muscle tension.',
    end:
        'This triceps-focused workout offers a comprehensive routine targeting the triceps muscles using a variety of exercises. Select appropriate weights, maintain proper form, and concentrate on the mind-muscle connection. Pay attention to your bodie and adjust the workout intensity as necessary for your fitness level.',
  ),
  WorkoutGridViewDetails(
    title: 'Forearms',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    assetColor: Colors.white,
    start:
        'This workout will help effectively target your forearm muscles for strength and development. As always, include warm-up and cool-down sessions in each workout.',
    firstTitle: 'Forearms-Focused Workout: Building Strong Forearms',
    secondTitle: '',
    warmup: 'Warm-Up:',
    warmupText:
        'Perform 5-10 minutes of light cardio and dynamic wrist stretches to prepare the forearms and increase blood flow.',
    partOne: 'Exercise 1: Wrist Roller',
    partOneText: '''Sets: 4
Reps: 10-12 (each direction)
Rest: 2 minutes
Description: Use a wrist roller with a rope attached to a weight. Roll the weight up and down by twisting the wrists in both directions. Wrist rollers effectively target forearm muscles.''',
    partTwo: 'Exercise 2: Behind-the-Back Barbell Wrist Curl',
    partTwoText: '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Hold a barbell behind your back with an overhand grip, rest your forearms on a bench, and curl the barbell upwards using your wrists. Behind-the-back wrist curls focus on the forearms.''',
    partThree: 'Exercise 3: Plate Pinch',
    partThreeText: '''Sets: 3
Reps: Hold for 20-30 seconds
Rest: 1.5 minutes
Description: Hold two weight plates (smooth side out) with your fingers and thumb, and pinch them together. Maintain the pinch for the designated time. Plate pinches improve grip strength and forearm endurance.''',
    partFour: 'Exercise 4: Fat Grip Biceps Curl',
    partFourText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Use fat grip attachments on dumbbells or barbells. Perform biceps curls with the thick grips to engage the forearm muscles more intensely.''',
    partFive: 'Exercise 5: Zottman Curl',
    partFiveText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold dumbbells at your sides, curl them upwards using your biceps, then rotate your wrists outward at the top and lower the dumbbells with a pronated grip. Zottman curls target both the biceps and forearms.''',
    partSix: 'Exercise 6: Farmer\'s Carry',
    partSixText: '''Sets: 3
Distance: Carry for 30-40 meters
Rest: 1.5 minutes
Description: Hold a heavy dumbbell or kettlebell in each hand and walk for the designated distance. Farmer's carries enhance forearm strength and grip.''',
    partSeven: 'Exercise 7: Bar Hang',
    partSevenText: '''Sets: 3
Duration: Hang for 30-45 seconds
Rest: 1.5 minutes
Description: Find a pull-up bar, grip it with both hands, and hang for the specified time. Bar hangs challenge forearm endurance and grip strength.''',
    partEight: '',
    partEightText: '',
    cooldown: 'Cool-Down:',
    cooldownText:
        'Stretch the forearms and wrists for 5-10 minutes to promote flexibility and reduce muscle tension.',
    end:
        'This forearms-focused workout offers a comprehensive routine targeting the forearm muscles using various exercises. Remember to choose appropriate weights, maintain proper form, and focus on the mind-muscle connection. Listen to your bodie and adjust the workout intensity as needed for your fitness level.',
  ),
  WorkoutGridViewDetails(
    title: 'Legs',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    assetColor: Colors.white,
    start:
        'This workout will help effectively target your leg muscles for strength and development. As always, include warm-up and cool-down sessions in each workout.',
    firstTitle: 'Legs-Focused Workout: Building Strong Lower Body',
    secondTitle: '',
    warmup: 'Warm-Up:',
    warmupText:
        'Perform 5-10 minutes of light cardio and dynamic leg stretches to prepare the legs and increase blood flow.',
    partOne: 'Exercise 1: Squats',
    partOneText: '''Sets: 4
Reps: 8-10
Rest: 2-3 minutes
Description: Place a barbell on your upper back, lower your body by bending your knees and hips, and then push back up. Squats engage the quadriceps, hamfinal Strings, and glutes.''',
    partTwo: 'Exercise 2: Dumbbell Walking Lunge',
    partTwoText: '''Sets: 3 (per leg)
Reps: 10-12 (per leg)
Rest: 1.5 minutes
Description: Hold a dumbbell in each hand, take a step forward into a lunge, and then step forward with the other leg. Dumbbell walking lunges target the quadriceps and glutes.''',
    partThree: 'Exercise 3: Leg Press',
    partThreeText: '''Sets: 4
Reps: 10-12
Rest: 2 minutes
Description: Sit in a leg press machine, place your feet on the platform, and push the platform upward by extending your knees. Leg presses target the quadriceps, hamfinal Strings, and glutes.''',
    partFour: 'Exercise 4: Bulgarian Split Squats',
    partFourText: '''Sets: 3 (per leg)
Reps: 10-12 (per leg)
Rest: 1.5 minutes
Description: Place one foot on a bench behind you, lunge down with the other leg, and then push back up. Bulgarian split squats target the quadriceps, hamfinal Strings, and glutes.''',
    partFive: 'Exercise 5: Calf Raises',
    partFiveText: '''Sets: 4
Reps: 12-15
Rest: 1.5 minutes
Description: Use a calf raise machine or a platform, stand on the balls of your feet, and raise your heels as high as possible. Calf raises target the calf muscles.''',
    partSix: 'Exercise 6: Leg Extensions',
    partSixText: '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Sit in a leg extension machine, extend your knees to lift the weights, and then lower them back down. Leg extensions focus on the quadriceps.''',
    partSeven: 'Exercise 7: Romanian Deadlift',
    partSevenText: ''''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a barbell with an overhand grip, hinge at the hips while keeping your back straight, and lower the barbell down your legs. Romanian deadlifts target the hamfinal Strings and glutes.''',
    partEight: 'Exercise 8: Goblet Squat',
    partEightText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold a dumbbell or kettlebell close to your chest, squat down, and then push back up. Goblet squats engage the quadriceps, hamfinal Strings, and glutes.''',
    cooldown: 'Cool-Down:',
    cooldownText:
        'Stretch the legs and hips for 5-10 minutes to promote flexibility and reduce muscle tension.',
    end:
        'This legs-focused workout offers a comprehensive routine targeting various muscle groups of the lower body. Choose appropriate weights, maintain proper form, and focus on the mind-muscle connection. Listen to your bodie and adjust the workout intensity as needed for your fitness level.',
  ),
  WorkoutGridViewDetails(
    title: 'Abs',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    assetColor: Colors.white,
    start:
        'This workout will help effectively target your core muscles for strength and definition. As always, include warm-up and cool-down sessions in each workout.',
    firstTitle: 'Abs-Focused Workout: Strengthening Your Core',
    secondTitle: '',
    warmup: 'Warm-Up:',
    warmupText:
        'Perform 5-10 minutes of light cardio and dynamic torso stretches to prepare the core and increase blood flow.',
    partOne: 'Exercise 1: Cable Crunch',
    partOneText: '''Sets: 4
Reps: 12-15
Rest: 1.5 minutes
Description: Attach a rope handle to a high cable pulley. Kneel in front of the cable machine, hold the rope behind your head, and crunch your torso downwards while engaging the core.''',
    partTwo: 'Exercise 2: Machine Crunch',
    partTwoText: '''Sets: 3
Reps: 15-20
Rest: 1.5 minutes
Description: Use an ab crunch machine. Sit down, grip the handles, and crunch your torso forward while contracting the abdominal muscles.''',
    partThree: 'Exercise 3: Landmine Twists',
    partThreeText: '''Sets: 3 (per side)
Reps: 12-15 (per side)
Rest: 1.5 minutes
Description: Insert one end of a barbell into a landmine attachment. Hold the other end with both hands, rotate your torso to one side, and then to the other side in a controlled twisting motion.''',
    partFour: 'Exercise 4: Cable Side Bend',
    partFourText: '''Sets: 3 (per side)
Reps: 12-15 (per side)
Rest: 1.5 minutes
Description: Attach a D-handle to a low cable pulley. Stand sideways to the cable machine, hold the handle with one hand, and perform side bends to engage the oblique muscles.''',
    partFive: 'Exercise 5: Hanging Knee Raise',
    partFiveText: '''Sets: 3
Reps: 12-15
Rest: 1.5 minutes
Description: Hang from a pull-up bar, raise your knees towards your chest by contracting the abdominal muscles, and then lower them back down with control.''',
    partSix: 'Exercise 6: Hanging Straight Leg Raise',
    partSixText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hang from a pull-up bar, keep your legs straight, raise them towards the ceiling, and then lower them back down slowly.''',
    partSeven: 'Exercise 7: Hanging Windshield Wiper',
    partSevenText: '''Sets: 3 (per side)
Reps: 8-10 (per side)
Rest: 1.5 minutes
Description: Hang from a pull-up bar, keep your legs straight, and perform controlled side-to-side movements with your legs, similar to windshield wipers.''',
    partEight: 'Exercise 8: Abs Wheel Rollout',
    partEightText: '''Sets: 3
Reps: 10-12
Rest: 1.5 minutes
Description: Hold an ab wheel with both hands, kneel on the floor, and roll the wheel forward while extending your torso. Keep your core engaged and your back straight.''',
    cooldown: 'Cool-Down:',
    cooldownText:
        'Stretch the core and torso for 5-10 minutes to promote flexibility and reduce muscle tension.',
    end:
        'This abs-focused workout provides a comprehensive routine targeting the core muscles using various exercises. Remember to choose appropriate intensities, maintain proper form, and focus on the mind-muscle connection. Listen to your bodie and adjust the workout intensity as needed for your fitness level.',
  ),
];
