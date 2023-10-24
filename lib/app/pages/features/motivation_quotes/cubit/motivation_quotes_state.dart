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




// class MotivationQuotesState {
//   const MotivationQuotesState({
//     this.model,
//     this.status = Status.initial,
//     this.errorMessage,
//     this.favoriteQuotes = const [],
//   });
//   final QuoteModel? model;
//   final Status status;
//   final String? errorMessage;
//   final List<QuoteModel> favoriteQuotes;
// }
