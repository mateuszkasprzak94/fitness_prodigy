import 'package:bloc_test/bloc_test.dart';
import 'package:fitness_prodigy/app/models/event_planner_item_model.dart';
import 'package:fitness_prodigy/app/pages/features/event_planner/details/cubit/details_cubit.dart';
import 'package:fitness_prodigy/app/repositories/items_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockItemsRepository extends Mock implements ItemsRepository {}

void main() {
  late DetailsCubit sut;
  late MockItemsRepository repository;

  setUp(() {
    repository = MockItemsRepository();
    sut = DetailsCubit(repository);
  });

  group(
    'DetailsCubit',
    () {
      group('getItemWithID', () {
        final itemModel = ItemModel(
            id: 'id1',
            title: 'title1',
            imageURL: 'imageURL1',
            releaseDate: DateTime(2023));

        setUp(() {
          when(() => repository.get(id: 'id1'))
              .thenAnswer((_) async => itemModel);
        });

        blocTest<DetailsCubit, DetailsState>(
          'Should emit DetailsState with the expected ItemModel when getItemWithID is called',
          build: () => sut,
          act: (cubit) => cubit.getItemWithID('id1'),
          expect: () => [
            // Use Matchers to check the itemModel property
            isA<DetailsState>()
                .having((state) => state.itemModel, 'itemModel', itemModel),
          ],
        );
      });
    },
  );
}
