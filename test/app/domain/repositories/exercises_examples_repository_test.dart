import 'package:fitness_prodigy/app/data/remote_data_sources/exercises_examples_data_source.dart';
import 'package:fitness_prodigy/app/domain/models/exercise_examples_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/exercises_examples_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockExercisesExamplesRepository extends Mock
    implements ExercisesExamplesMockedDataSource {}

void main() {
  late ExercisesExamplesRepository sut;
  late MockExercisesExamplesRepository dataSource;

  setUp(() {
    dataSource = MockExercisesExamplesRepository();
    sut = ExercisesExamplesRepository(remoteDataSource: dataSource);
  });

  group('ExercisesExamplesRepository', () {
    test('fetch muscle name data', () async {
      // 1
      when(() => dataSource.getExercisesData()).thenAnswer((_) async => [
            {
              'id': '1',
              'muscle_name': 'name1',
              'title': 'title1',
              'muscle_start': 'start1',
              'exercise_name_one': 'exercise_name_one1',
              'exercise_name_one_description': 'exercise_name_one_description1',
              'exercise_name_one_image': 'exercise_name_one_image1',
              'exercise_name_two': 'exercise_name_two1',
              'exercise_name_two_description': 'exercise_name_two_description1',
              'exercise_name_two_image': 'exercise_name_two_image1',
              'exercise_name_three': 'exercise_name_three1',
              'exercise_name_three_description':
                  'exercise_name_three_description1',
              'exercise_name_three_image': 'exercise_name_three_image1',
              'exercise_name_four': 'exercise_name_four1',
              'exercise_name_four_description':
                  'exercise_name_four_description1',
              'exercise_name_four_image': 'exercise_name_four_image1',
              'exercise_name_five': 'exercise_name_five1',
              'exercise_name_five_description':
                  'exercise_name_five_description1',
              'exercise_name_five_image': 'exercise_name_five_image1',
              'exercise_name_six': 'exercise_name_six1',
              'exercise_name_six_description': 'exercise_name_six_description1',
              'exercise_name_six_image': 'exercise_name_six_image1',
              'exercise_name_seven': 'exercise_name_seven1',
              'exercise_name_seven_description':
                  'exercise_name_seven_description1',
              'exercise_name_seven_image': 'exercise_name_seven_image1',
              'exercise_name_eight': 'exercise_name_eight1',
              'exercise_name_eight_description':
                  'exercise_name_eight_description1',
              'exercise_name_eight_image': 'exercise_name_eight_image1',
              'exercise_name_nine': 'exercise_name_nine1',
              'exercise_name_nine_description':
                  'exercise_name_nine_description1',
              'exercise_name_nine_image': 'exercise_name_nine_image1',
              'muscle_end': 'end1',
            }
          ]);
      // 2
      final result = await sut.getExerciseExample('name1');

      // 3
      expect(
        result,
        [
          ExerciseExamplesModel(
            '1',
            'name1',
            'title1',
            'start1',
            'exercise_name_one1',
            'exercise_name_one_description1',
            'exercise_name_one_image1',
            'exercise_name_two1',
            'exercise_name_two_description1',
            'exercise_name_two_image1',
            'exercise_name_three1',
            'exercise_name_three_description1',
            'exercise_name_three_image1',
            'exercise_name_four1',
            'exercise_name_four_description1',
            'exercise_name_four_image1',
            'exercise_name_five1',
            'exercise_name_five_description1',
            'exercise_name_five_image1',
            'exercise_name_six1',
            'exercise_name_six_description1',
            'exercise_name_six_image1',
            'exercise_name_seven1',
            'exercise_name_seven_description1',
            'exercise_name_seven_image1',
            'exercise_name_eight1',
            'exercise_name_eight_description1',
            'exercise_name_eight_image1',
            'exercise_name_nine1',
            'exercise_name_nine_description1',
            'exercise_name_nine_image1',
            'end1',
          ),
        ],
      );
    });
  });
}
