import 'dart:math';

import 'package:fitness_prodigy/app/data/remote_data_sources/motivation_quote_data_source.dart';
import 'package:fitness_prodigy/app/models/quote_model.dart';

class MotivationQuotesRepository {
  MotivationQuotesRepository(this._motivationQuotesRemoteDataSource);

  final MotivationQuotesRemoteDataSource _motivationQuotesRemoteDataSource;

  Future<QuoteModel?> getRandomQuote() async {
    final json = await _motivationQuotesRemoteDataSource.getQuoteData();

    if (json == null) {
      return null;
    }
// Generate a random index to pick a random quote
    final List<dynamic> quotesList = json['quotes'];
    final random = Random();
    final randomIndex = random.nextInt(quotesList.length);

    return QuoteModel.fromJson(quotesList[randomIndex]);
  }
}
