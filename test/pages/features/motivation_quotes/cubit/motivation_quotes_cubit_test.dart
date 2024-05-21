import 'package:bloc_test/bloc_test.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/domain/models/quote_model.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/cubit/motivation_quotes_cubit.dart';
import 'package:fitness_prodigy/app/domain/repositories/motivation_quotes_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMotivationQuotesRepository extends Mock
    implements MotivationQuotesRepository {}

void main() {
  late MotivationQuotesCubit sut;
  late MockMotivationQuotesRepository repository;

  setUp(() {
    repository = MockMotivationQuotesRepository();
    sut = MotivationQuotesCubit(motivationQuotesRepository: repository);
  });

  const documentID = 'document_id';
  group('getRandomQuote', () {
    group('success', () {
      setUp(() {
        when(() => repository.getRandomQuote()).thenAnswer(
          (_) async => QuoteModel(
            '1',
            'quote1',
            'author1',
            DateTime(2023),
          ),
        );
      });

      blocTest<MotivationQuotesCubit, MotivationQuotesState>(
        'emit Status.loading then Status.succes with results',
        build: () => sut,
        act: (cubit) => cubit.getRandomQuote(),
        expect: () => [
          MotivationQuotesState(status: Status.loading),
          MotivationQuotesState(
            status: Status.success,
            model: QuoteModel(
              '1',
              'quote1',
              'author1',
              DateTime(2023),
            ),
          )
        ],
      );
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getRandomQuote())
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest<MotivationQuotesCubit, MotivationQuotesState>(
        'emit Status.loading then Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.getRandomQuote(),
        expect: () => [
          MotivationQuotesState(status: Status.loading),
          MotivationQuotesState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
    group('addQuotetoFavorites', () {
      setUp(() {
        when(() => repository.add(QuoteModel(
              '1',
              'quote1',
              'author1',
              DateTime(2023),
            ))).thenAnswer((_) async => QuoteModel(
              '1',
              'quote1',
              'author1',
              DateTime(2023),
            ));
      });

      blocTest<MotivationQuotesCubit, MotivationQuotesState>(
        'check if quote is added to favorites',
        build: () => sut,
        act: (cubit) => cubit.addQuoteToFavorites(QuoteModel(
          '1',
          'quote1',
          'author1',
          DateTime(2023),
        )),
        expect: () => [],
      );
    });

    group('removeQuoteFromFavorites', () {
      setUp(() {
        when(() => repository.delete(documentID: documentID))
            .thenAnswer((_) async => []);
      });

      blocTest<MotivationQuotesCubit, MotivationQuotesState>(
        'remove quote from favorite list',
        build: () => sut,
        act: (cubit) => cubit.removeQuoteFromFavorites(documentID: documentID),
        expect: () => [],
      );
    });
  });
}
