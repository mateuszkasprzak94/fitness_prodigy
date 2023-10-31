import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/models/quote_model.dart';
import 'package:fitness_prodigy/app/repositories/motivation_quotes_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'motivation_quotes_cubit.freezed.dart';
part 'motivation_quotes_state.dart';

class MotivationQuotesCubit extends Cubit<MotivationQuotesState> {
  MotivationQuotesCubit({required this.motivationQuotesRepository})
      : super(MotivationQuotesState());

  final MotivationQuotesRepository motivationQuotesRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      MotivationQuotesState(status: Status.loading),
    );
    _streamSubscription = motivationQuotesRepository
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
    emit(MotivationQuotesState(status: Status.loading));
    try {
      final quoteModel = await motivationQuotesRepository.getRandomQuote();
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
    await motivationQuotesRepository.add(quote);
  }

  // final List<QuoteModel> favoriteQuotes = [];

  Future<void> removeQuoteFromFavorites({required String documentID}) async {
    await motivationQuotesRepository.delete(documentID: documentID);
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
