part of 'motivation_quotes_cubit.dart';

class MotivationQuotesState {
  const MotivationQuotesState({
    this.model,
    this.status = Status.initial,
    this.errorMessage,
  });
  final QuoteModel? model;
  final Status status;
  final String? errorMessage;
}
