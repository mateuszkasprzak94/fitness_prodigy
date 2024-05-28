part of 'muscle_anatomy_cubit.dart';

@freezed
class MuscleAnatomyState with _$MuscleAnatomyState {
  factory MuscleAnatomyState({
    @Default([]) List<ExerciseExamplesModel> exercisesData,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _MuscleAnatomyState;
}
