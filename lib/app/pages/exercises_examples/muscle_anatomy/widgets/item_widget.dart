import 'package:fitness_prodigy/app/core/text_styles.dart';
import 'package:fitness_prodigy/app/domain/models/exercise_examples_model.dart';
import 'package:fitness_prodigy/app/pages/exercises_examples/muscle_anatomy/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseItemWidget extends StatelessWidget {
  const ExerciseItemWidget({
    super.key,
    required this.exerciseModel,
    required this.index,
  });

  final ExerciseExamplesModel exerciseModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          exerciseModel.title,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: screenWidth * 0.07,
            color: Colors.amber.shade600,
            fontStyle: FontStyle.italic,
            shadows: [
              const Shadow(
                color: Colors.black,
                offset: Offset(0, 3),
                blurRadius: 1.0,
              )
            ],
          ),
        ),
        const SizedBox(height: 15),
        Text(
          exerciseModel.muscleStart,
          style: exercisesTextStyle,
        ),
        const SizedBox(height: 15),
        const Divider(
          height: 10,
          thickness: 5,
        ),
        const SizedBox(height: 15),
        TextWidget(
            title: exerciseModel.exerciseNameOne,
            description: exerciseModel.exerciseNameOneDescription,
            image: exerciseModel.exerciseNameOneImage),
        const SizedBox(height: 15),
        TextWidget(
            title: exerciseModel.exerciseNameTwo,
            description: exerciseModel.exerciseNameTwoDescription,
            image: exerciseModel.exerciseNameTwoImage),
        const SizedBox(height: 15),
        TextWidget(
            title: exerciseModel.exerciseNameThree,
            description: exerciseModel.exerciseNameThreeDescription,
            image: exerciseModel.exerciseNameThreeImage),
        const SizedBox(height: 15),
        TextWidget(
            title: exerciseModel.exerciseNameFour,
            description: exerciseModel.exerciseNameFourDescription,
            image: exerciseModel.exerciseNameFourImage),
        const SizedBox(height: 15),
        TextWidget(
            title: exerciseModel.exerciseNameFive,
            description: exerciseModel.exerciseNameFiveDescription,
            image: exerciseModel.exerciseNameFiveImage),
        const SizedBox(height: 15),
        TextWidget(
            title: exerciseModel.exerciseNameSix,
            description: exerciseModel.exerciseNameSixDescription,
            image: exerciseModel.exerciseNameSixImage),
        const SizedBox(height: 15),
        TextWidget(
            title: exerciseModel.exerciseNameSeven,
            description: exerciseModel.exerciseNameSevenDescription,
            image: exerciseModel.exerciseNameSevenImage),
        const SizedBox(height: 15),
        TextWidget(
            title: exerciseModel.exerciseNameEight,
            description: exerciseModel.exerciseNameEightDescription,
            image: exerciseModel.exerciseNameEightImage),
        const SizedBox(height: 15),
        TextWidget(
            title: exerciseModel.exerciseNameNine,
            description: exerciseModel.exerciseNameNineDescription,
            image: exerciseModel.exerciseNameNineImage),
        const SizedBox(height: 15),
        const Divider(
          height: 10,
          thickness: 5,
        ),
        Text(
          exerciseModel.muscleEnd,
          style: exercisesTextStyle,
        ),
      ],
    );
  }
}
