part of 'motivation_quotes_cubit.dart';

@freezed
class MotivationQuotesState with _$MotivationQuotesState {
  factory MotivationQuotesState({
    QuoteModel? model,
    @Default(Status.initial) Status status,
    String? errorMessage,
    @Default([]) List<QuoteModel> favoriteQuotes,
  }) = _MotivationQuotesState;
}
