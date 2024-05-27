import 'package:fitness_prodigy/app/data/remote_data_sources/exercises_examples_data_source.dart';
import 'package:fitness_prodigy/app/domain/models/exercise_examples_model.dart';

class ExercisesExamplesRepository {
  ExercisesExamplesRepository({required this.remoteDataSource});

  final ExercisesExamplesMockedDataSource remoteDataSource;

  Future<List<ExerciseExamplesModel>> getExerciseExample(
      String muscleName) async {
    final json = await remoteDataSource.getExercisesData();

    if (json == null) {
      return [];
    }

    final allExercises =
        json.map((item) => ExerciseExamplesModel.fromJson(item)).toList();

    return allExercises.where((type) => type.muscleName == muscleName).toList();
  }
}
