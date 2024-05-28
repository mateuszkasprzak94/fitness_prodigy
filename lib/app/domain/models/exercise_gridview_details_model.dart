import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:flutter/material.dart';

class ExerciseGridViewDetails {
  ExerciseGridViewDetails({
    required this.title,
    required this.iconImage,
    required this.gradientsColor,
    required this.muscleName,
    required this.muscleTitle,
  });

  final String title;
  final String iconImage;
  final List<Color> gradientsColor;
  final String muscleName;
  final String muscleTitle;
}

final List<ExerciseGridViewDetails> exerciseGridViewDetails = [
  ExerciseGridViewDetails(
    title: 'chest',
    iconImage: 'assets/exercise_examples_page_images/chest.png',
    gradientsColor: kHomeGradient,
    muscleName: 'chest',
    muscleTitle: 'Forge Your Pectoral Power',
  ),
  ExerciseGridViewDetails(
    title: 'back',
    iconImage: 'assets/exercise_examples_page_images/back.png',
    gradientsColor: kHomeGradient,
    muscleName: 'back',
    muscleTitle: 'Unlock Your Back\'s Full Potential',
  ),
  ExerciseGridViewDetails(
    title: 'shoulders',
    iconImage: 'assets/exercise_examples_page_images/shoulders.png',
    gradientsColor: kHomeGradient,
    muscleName: 'shoulders',
    muscleTitle: 'Crafting Broad and Impressive Shoulders',
  ),
  ExerciseGridViewDetails(
    title: 'biceps',
    iconImage: 'assets/exercise_examples_page_images/biceps.png',
    gradientsColor: kHomeGradient,
    muscleName: 'biceps',
    muscleTitle: 'Crafting Strength and Definition',
  ),
  ExerciseGridViewDetails(
    title: 'triceps',
    iconImage: 'assets/exercise_examples_page_images/triceps.png',
    gradientsColor: kHomeGradient,
    muscleName: 'triceps',
    muscleTitle: 'Sculpting Powerful Triceps',
  ),
  ExerciseGridViewDetails(
    title: 'forearms',
    iconImage: 'assets/exercise_examples_page_images/forearms.png',
    gradientsColor: kHomeGradient,
    muscleName: 'forearms',
    muscleTitle: 'Building Resilient Forearms: Strengthening Grip',
  ),
  ExerciseGridViewDetails(
    title: 'legs',
    iconImage: 'assets/exercise_examples_page_images/legs.png',
    gradientsColor: kHomeGradient,
    muscleName: 'legs',
    muscleTitle: 'Forging Powerful Lower Body',
  ),
  ExerciseGridViewDetails(
    title: 'abs',
    iconImage: 'assets/exercise_examples_page_images/abs.png',
    gradientsColor: kHomeGradient,
    muscleName: 'abs',
    muscleTitle: 'Sculpting Strong Core: Unveiling Abdominal Power',
  ),
];
