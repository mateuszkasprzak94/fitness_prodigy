import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/pages/exercises_examples/muscle_anatomy/abs_page.dart';
import 'package:fitness_prodigy/app/pages/exercises_examples/muscle_anatomy/back_page.dart';
import 'package:fitness_prodigy/app/pages/exercises_examples/muscle_anatomy/biceps_page.dart';
import 'package:fitness_prodigy/app/pages/exercises_examples/muscle_anatomy/chest_page.dart';
import 'package:fitness_prodigy/app/pages/exercises_examples/muscle_anatomy/forearms_page.dart';
import 'package:fitness_prodigy/app/pages/exercises_examples/muscle_anatomy/legs_page.dart';
import 'package:fitness_prodigy/app/pages/exercises_examples/muscle_anatomy/shoulders_page.dart';
import 'package:fitness_prodigy/app/pages/exercises_examples/muscle_anatomy/triceps_page.dart';
import 'package:flutter/material.dart';

class ExerciseGridViewDetails {
  ExerciseGridViewDetails({
    required this.title,
    required this.iconImage,
    required this.gradientsColor,
    required this.onPressed,
  });

  final String title;
  final String iconImage;
  final List<Color> gradientsColor;
  final void Function(BuildContext context) onPressed;
}

final List<ExerciseGridViewDetails> exerciseGridViewDetails = [
  ExerciseGridViewDetails(
    title: 'chest',
    iconImage: 'assets/exercise_examples_page_images/chest.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const ChestPage(),
        ),
      );
    },
  ),
  ExerciseGridViewDetails(
    title: 'back',
    iconImage: 'assets/exercise_examples_page_images/back.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const BackPage(),
        ),
      );
    },
  ),
  ExerciseGridViewDetails(
    title: 'shoulders',
    iconImage: 'assets/exercise_examples_page_images/shoulders.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const ShouldersPage(),
        ),
      );
    },
  ),
  ExerciseGridViewDetails(
    title: 'biceps',
    iconImage: 'assets/exercise_examples_page_images/biceps.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const BicepsPage(),
        ),
      );
    },
  ),
  ExerciseGridViewDetails(
    title: 'triceps',
    iconImage: 'assets/exercise_examples_page_images/triceps.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const TricepsPage(),
        ),
      );
    },
  ),
  ExerciseGridViewDetails(
    title: 'forearms',
    iconImage: 'assets/exercise_examples_page_images/forearms.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const ForearmsPage(),
        ),
      );
    },
  ),
  ExerciseGridViewDetails(
    title: 'legs',
    iconImage: 'assets/exercise_examples_page_images/legs.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const LegsPage(),
        ),
      );
    },
  ),
  ExerciseGridViewDetails(
    title: 'abs',
    iconImage: 'assets/exercise_examples_page_images/abs.png',
    gradientsColor: kHomeGradient,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const AbsPage(),
        ),
      );
    },
  ),
];
