part of 'goals_cubit.dart';

@freezed
class GoalsState with _$GoalsState {
  factory GoalsState({
    @Default([]) List<GoalModel> items,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _GoalsState;
}
