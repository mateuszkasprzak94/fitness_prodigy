part of 'motivation_quotes_cubit.dart';

class MotivationQuotesState {
  const MotivationQuotesState({
    this.model,
    this.status = Status.initial,
    this.errorMessage,
    this.favoriteQuotes = const [],
  });
  final QuoteModel? model;
  final Status status;
  final String? errorMessage;
  final List<QuoteModel> favoriteQuotes;
}
