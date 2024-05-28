import 'package:fitness_prodigy/app/data/remote_data_sources/motivation_quote_data_source.dart';
import 'package:fitness_prodigy/app/domain/models/quote_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/motivation_quotes_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMotivationQuotesRepository extends Mock
    implements MotivationQuotesRemoteDioDataSource {}

void main() {
  late MotivationQuotesRepository sut;
  late MockMotivationQuotesRepository dataSource;

  setUp(() {
    dataSource = MockMotivationQuotesRepository();
    sut = MotivationQuotesRepository(
        motivationQuotesRemoteDataSource: dataSource);
  });

  group('MotivationQuotesRepository', () {
    test('fetches a random quote', () async {
      // 1
      when(() => dataSource.getQuoteData()).thenAnswer((_) async => [
            {
              'id': '1',
              'quote': 'quote1',
              'author': 'author1',
              'timestamp': DateTime.now()
            }
          ]);
      // 2
      final result = await sut.getRandomQuote();

      // 3
      expect(
        result,
        QuoteModel(
          '1',
          'quote1',
          'author1',
          DateTime.now(),
        ),
      );
    });
  });
}
