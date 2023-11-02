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

  group('description', () {
    setUp(() {
      when(() => repository.add('title1', 'imageURL1', DateTime(15)))
          .thenAnswer((_) async => [
                AddState(
                  saved: true,
                  errorMessage: null,
                ),
              ]);
    });

    blocTest<AddCubit, AddState>('description',
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
}



































// import 'package:bloc_test/bloc_test.dart';
// import 'package:fitness_prodigy/app/pages/features/event_planner/event_planner_add_page/cubit/add_cubit.dart';
// import 'package:fitness_prodigy/app/repositories/items_repository.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';

// class MockItemsRepository extends Mock implements ItemsRepository {}

// void main() {
//   late AddCubit sut;
//   late MockItemsRepository repository;

//   setUp(() {
//     repository = MockItemsRepository();
//     sut = AddCubit(repository);
//   });

//   group('add', () {
//     setUp(() {
//       when(() => repository.add('Test Item', 'image_url', DateTime.now()))
//           .thenAnswer((_) async => false);
//     });

//     blocTest<AddCubit, AddState>(
//       'emits AddState(saved: true) when adding item successfully',
//       build: () => sut,
//       act: (cubit) async =>
//           await cubit.add('Test Item', 'image_url', DateTime.now()),
//       expect: () =>
//           [AddState(saved: false, errorMessage: 'Exception: Test Error')],
//     );

//     setUp(() {
//       when(() => repository.add('Test Item', 'image_url', DateTime.now()))
//           .thenThrow(Exception('Test Error'));
//     });

//     blocTest<AddCubit, AddState>(
//       'emits AddState with error message when adding item fails',
//       build: () => sut,
//       act: (cubit) => cubit.add('Test Item', 'image_url', DateTime.now()),
//       expect: () => [
//         AddState(errorMessage: 'Exception: Test Error'),
//       ],
//     );
//   });
// }
