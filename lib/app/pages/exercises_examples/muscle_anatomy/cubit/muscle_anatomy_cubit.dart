import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/domain/models/exercise_examples_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/exercises_examples_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'muscle_anatomy_state.dart';
part 'generated/muscle_anatomy_cubit.freezed.dart';

class MuscleAnatomyCubit extends Cubit<MuscleAnatomyState> {
  MuscleAnatomyCubit({required this.exercisesExamplesRepository})
      : super(MuscleAnatomyState());

  final ExercisesExamplesRepository exercisesExamplesRepository;

  Future<void> fetchExerciseData({required String muscleName}) async {
    emit(
      MuscleAnatomyState(
        status: Status.loading,
      ),
    );
    try {
      final exerciseData =
          await exercisesExamplesRepository.getExerciseExample(muscleName);

      emit(
        MuscleAnatomyState(
          status: Status.success,
          exercisesData: exerciseData,
        ),
      );
    } catch (error) {
      emit(
        MuscleAnatomyState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
