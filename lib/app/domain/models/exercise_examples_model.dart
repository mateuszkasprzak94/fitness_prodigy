import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/exercise_examples_model.freezed.dart';
part 'generated/exercise_examples_model.g.dart';

@freezed
class ExerciseExamplesModel with _$ExerciseExamplesModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ExerciseExamplesModel(
    String id,
    String muscleName,
    String title,
    String muscleStart,
    String exerciseNameOne,
    String exerciseNameOneDescription,
    String exerciseNameOneImage,
    String exerciseNameTwo,
    String exerciseNameTwoDescription,
    String exerciseNameTwoImage,
    String exerciseNameThree,
    String exerciseNameThreeDescription,
    String exerciseNameThreeImage,
    String exerciseNameFour,
    String exerciseNameFourDescription,
    String exerciseNameFourImage,
    String exerciseNameFive,
    String exerciseNameFiveDescription,
    String exerciseNameFiveImage,
    String exerciseNameSix,
    String exerciseNameSixDescription,
    String exerciseNameSixImage,
    String exerciseNameSeven,
    String exerciseNameSevenDescription,
    String exerciseNameSevenImage,
    String exerciseNameEight,
    String exerciseNameEightDescription,
    String exerciseNameEightImage,
    String exerciseNameNine,
    String exerciseNameNineDescription,
    String exerciseNameNineImage,
    String muscleEnd,
  ) = _ExerciseExamplesModel;

  factory ExerciseExamplesModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseExamplesModelFromJson(json);
}
