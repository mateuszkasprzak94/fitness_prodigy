import 'package:fitness_prodigy/app/data/remote_data_sources/supplements_data_source.dart';
import 'package:fitness_prodigy/app/domain/models/supplements_type_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/supplements_type_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSupplementsTypeRepository extends Mock
    implements SupplementsTypeMockedDataSource {}

void main() {
  late SupplementsTypeRepository sut;
  late MockSupplementsTypeRepository dataSource;

  setUp(() {
    dataSource = MockSupplementsTypeRepository();
    sut = SupplementsTypeRepository(remoteDataSource: dataSource);
  });

  group('SupplementsTypeRepository', () {
    test('fetch supplements type', () async {
      // 1
      when(() => dataSource.getSupplementsData()).thenAnswer((_) async => [
            {
              'id': '1',
              'supplement_type': 'supplement_type1',
              'supplement_name': 'supplement_name1',
              'overview': 'overview1',
              'role': 'roles1',
              'source': 'source1',
              'benefits': 'benefits1',
              'usage': 'usage1',
              'caution': 'caution1',
              'conclusion': 'conclusion1',
            }
          ]);
      // 2
      final result = await sut.getSupplementsType('supplement_type1');

      // 3
      expect(
        result,
        [
          SupplementsTypeModel(
            '1',
            'supplement_type1',
            'supplement_name1',
            'overview1',
            'roles1',
            'source1',
            'benefits1',
            'usage1',
            'caution1',
            'conclusion1',
          ),
        ],
      );
    });
  });
}
