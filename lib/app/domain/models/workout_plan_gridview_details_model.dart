import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/pages/workout_plans/workout_plans_pages/abs_workout_page.dart';
import 'package:fitness_prodigy/app/pages/workout_plans/workout_plans_pages/advanced_workout_page.dart';
import 'package:fitness_prodigy/app/pages/workout_plans/workout_plans_pages/back_workout_page.dart';
import 'package:fitness_prodigy/app/pages/workout_plans/workout_plans_pages/beginner_workout_page.dart';
import 'package:fitness_prodigy/app/pages/workout_plans/workout_plans_pages/biceps_workout_page.dart';
import 'package:fitness_prodigy/app/pages/workout_plans/workout_plans_pages/chest_workout_page.dart';
import 'package:fitness_prodigy/app/pages/workout_plans/workout_plans_pages/forearms_workout_page.dart';
import 'package:fitness_prodigy/app/pages/workout_plans/workout_plans_pages/intermediate_workout_page.dart';
import 'package:fitness_prodigy/app/pages/workout_plans/workout_plans_pages/legs_workout_page.dart';
import 'package:fitness_prodigy/app/pages/workout_plans/workout_plans_pages/shoulders_workout_page.dart';
import 'package:fitness_prodigy/app/pages/workout_plans/workout_plans_pages/triceps_workout_page.dart';
import 'package:flutter/material.dart';

class WorkoutGridViewDetails {
  WorkoutGridViewDetails(
      {required this.title,
      required this.iconImage,
      required this.gradientsColor,
      required this.onPressed,
      this.assetColor});

  final String title;
  final String iconImage;
  final List<Color> gradientsColor;
  final void Function(BuildContext context) onPressed;
  final Color? assetColor;
}

final List<WorkoutGridViewDetails> workoutGridViewDetails = [
  WorkoutGridViewDetails(
    title: 'Beginner Workout',
    iconImage: 'assets/images/star.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const BeginnerWorkoutPage(),
        ),
      );
    },
  ),
  WorkoutGridViewDetails(
    title: 'Intermediate Workout',
    iconImage: 'assets/images/star2.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const IntermediateWorkoutPage(),
        ),
      );
    },
  ),
  WorkoutGridViewDetails(
    title: 'Advanced Workout',
    iconImage: 'assets/images/star3.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const AdvancedWorkoutPage(),
        ),
      );
    },
  ),
  WorkoutGridViewDetails(
    title: 'Chest',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const ChestWorkoutPage(),
        ),
      );
    },
    assetColor: Colors.white,
  ),
  WorkoutGridViewDetails(
    title: 'Back',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const BackWorkoutPage(),
        ),
      );
    },
    assetColor: Colors.white,
  ),
  WorkoutGridViewDetails(
    title: 'Shoulders',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const ShouldersWorkoutPage(),
        ),
      );
    },
    assetColor: Colors.white,
  ),
  WorkoutGridViewDetails(
    title: 'Biceps',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const BicepsWorkoutPage(),
        ),
      );
    },
    assetColor: Colors.white,
  ),
  WorkoutGridViewDetails(
    title: 'Triceps',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const TricepsWorkoutPage(),
        ),
      );
    },
    assetColor: Colors.white,
  ),
  WorkoutGridViewDetails(
    title: 'Forearms',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const ForearmsWorkoutPage(),
        ),
      );
    },
    assetColor: Colors.white,
  ),
  WorkoutGridViewDetails(
    title: 'Legs',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const LegsWorkoutPage(),
        ),
      );
    },
    assetColor: Colors.white,
  ),
  WorkoutGridViewDetails(
    title: 'Abs',
    iconImage: 'assets/images/barbell.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const AbsWorkoutPage(),
        ),
      );
    },
    assetColor: Colors.white,
  ),
];
