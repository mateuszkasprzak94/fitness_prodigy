part of 'goals_cubit.dart';

class GoalsState {
  final List<GoalModel> items;
  final bool isLoading;
  final String errorMessage;

  const GoalsState({
    this.items = const [],
    this.isLoading = false,
    this.errorMessage = '',
  });
}
