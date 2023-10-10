import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/models/quote_model.dart';
import 'package:fitness_prodigy/app/repositories/motivation_quotes_repository.dart';

part 'motivation_quotes_state.dart';

class MotivationQuotesCubit extends Cubit<MotivationQuotesState> {
  MotivationQuotesCubit(this._motivationQuotesRepository)
      : super(const MotivationQuotesState());

  final MotivationQuotesRepository _motivationQuotesRepository;

  Future<void> getRandomQuote() async {
    emit(const MotivationQuotesState(status: Status.loading));
    try {
      final quoteModel = await _motivationQuotesRepository.getRandomQuote();
      emit(MotivationQuotesState(model: quoteModel, status: Status.success));
    } catch (error) {
      emit(
        MotivationQuotesState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  final List<QuoteModel> favoriteQuotes = [];

  Future<void> addQuoteToFavorites(QuoteModel quote) async {
    favoriteQuotes.add(quote);
    emit(MotivationQuotesState(
        model: state.model,
        status: state.status,
        favoriteQuotes: favoriteQuotes));
  }

  Future<void> removeQuoteFromFavorites(QuoteModel quoteModel) async {
    favoriteQuotes.remove(quoteModel);
    emit(MotivationQuotesState(
        model: state.model,
        status: state.status,
        favoriteQuotes: favoriteQuotes));
  }
}
