import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/models/quote_model.dart';
import 'package:fitness_prodigy/app/repositories/motivation_quotes_repository.dart';

part 'motivation_quotes_state.dart';

class MotivationQuotesCubit extends Cubit<MotivationQuotesState> {
  MotivationQuotesCubit(this._motivationQuotesRepository)
      : super(const MotivationQuotesState());

  final MotivationQuotesRepository _motivationQuotesRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      MotivationQuotesState(
        model: state.model,
        status: state.status,
        errorMessage: '',
        favoriteQuotes: [],
      ),
    );
    _streamSubscription = _motivationQuotesRepository
        .getMotivationStream()
        .listen((favoriteQuotes) {
      emit(MotivationQuotesState(favoriteQuotes: favoriteQuotes));
    })
      ..onError((error) {
        emit(
          MotivationQuotesState(
            favoriteQuotes: [],
            status: Status.error,
            errorMessage: error.toString(),
          ),
        );
      });
  }

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

  Future<void> addQuoteToFavorites(QuoteModel quote) async {
    await _motivationQuotesRepository.add(quote);
  }

  // final List<QuoteModel> favoriteQuotes = [];

  Future<void> removeQuoteFromFavorites({required String documentID}) async {
    await _motivationQuotesRepository.delete(documentID: documentID);
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
