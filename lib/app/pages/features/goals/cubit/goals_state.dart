part of 'goals_cubit.dart';

@freezed
class GoalsState with _$GoalsState {
  factory GoalsState({
    @Default([]) List<GoalModel> items,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _GoalsState;
}



// class GoalsState {
//   const GoalsState({
//     this.items = const [],
//     this.isLoading = false,
//     this.errorMessage = '',
//   });

//   final List<GoalModel> items;
//   final bool isLoading;
//   final String errorMessage;
// }
