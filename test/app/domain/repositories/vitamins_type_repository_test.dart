import 'package:fitness_prodigy/app/data/remote_data_sources/vitamins_data_source.dart';
import 'package:fitness_prodigy/app/domain/models/vitamins_type_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/vitamins_type_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockVitaminsTypeRepository extends Mock
    implements VitaminsTypeMockedDataSource {}

void main() {
  late VitaminsTypeRepository sut;
  late MockVitaminsTypeRepository dataSource;

  setUp(() {
    dataSource = MockVitaminsTypeRepository();
    sut = VitaminsTypeRepository(remoteDataSource: dataSource);
  });

  group('VitaminsTypeRepository', () {
    test('fetch vitamins type', () async {
      // 1
      when(() => dataSource.getVitaminsData()).thenAnswer((_) async => [
            {
              'id': '1',
              'vitamin_type': 'vitamin_type1',
              'vitamin_name': 'vitamin_name1',
              'overview': 'overview1',
              'benefits': 'benefits1',
              'source': 'source1',
              'usage': 'usage1',
              'caution': 'caution1',
              'conclusion': 'conclusion1',
            }
          ]);
      // 2
      final result = await sut.getVitaminsType('vitamin_type1');

      // 3
      expect(
        result,
        [
          VitaminsTypeModel(
            '1',
            'vitamin_type1',
            'vitamin_name1',
            'overview1',
            'benefits1',
            'source1',
            'usage1',
            'caution1',
            'conclusion1',
          ),
        ],
      );
    });
  });
}
