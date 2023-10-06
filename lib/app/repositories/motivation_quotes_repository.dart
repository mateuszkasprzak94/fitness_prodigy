import 'package:fitness_prodigy/app/data/remote_data_sources/motivation_quote_data_source.dart';
import 'package:fitness_prodigy/app/models/quote_model.dart';

class MotivationQuotesRepository {
  MotivationQuotesRepository(this._motivationQuotesRemoteDataSource);

  final MotivationQuotesRemoteDataSource _motivationQuotesRemoteDataSource;

  Future<QuoteModel?> getQuoteModel() async {
    final json = await _motivationQuotesRemoteDataSource.getQuoteData();

    if (json == null) {
      return null;
    }

    return QuoteModel.fromJson(json);
  }
}
