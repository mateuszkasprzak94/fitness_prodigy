import 'package:bloc_test/bloc_test.dart';
import 'package:fitness_prodigy/app/pages/features/event_planner/event_planner_add_page/cubit/add_cubit.dart';
import 'package:fitness_prodigy/app/repositories/items_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockItemsRepository extends Mock implements ItemsRepository {}

void main() {
  late AddCubit sut;
  late MockItemsRepository repository;

  setUp(() {
    repository = MockItemsRepository();
    sut = AddCubit(repository);
  });

  group('AddCubit', () {
    group('successfull AddState', () {
      setUp(() {
        // Set up mock repository to return a seccessful response
        when(() => repository.add('title1', 'imageURL1', DateTime(15)))
            .thenAnswer((_) async => [
                  AddState(
                    saved: true,
                    errorMessage: null,
                  ),
                ]);
      });

      blocTest<AddCubit, AddState>(
          'emits AddState(saved: true, errorMessage: null) when adding item successfully',
          build: () => sut,
          act: (cubit) => cubit.add(
                'title1',
                'imageURL1',
                DateTime(15),
              ),
          expect: () async => [
                AddState(
                  saved: true,
                  errorMessage: null,
                ),
              ]);
    });
    group('unsuccessfull AddState', () {
      setUp(() {
        // Set up mock repository to return a seccessful response
        when(() => repository.add('title1', 'imageURL1', DateTime(15)))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest<AddCubit, AddState>(
          'emits AddState(saved: true, errorMessage: null) when adding item successfully',
          build: () => sut,
          act: (cubit) => cubit.add(
                'title1',
                'imageURL1',
                DateTime(15),
              ),
          expect: () => [
                AddState(
                  saved: false,
                  errorMessage: 'Exception: test-exception-error',
                ),
              ]);
    });
  });
}
