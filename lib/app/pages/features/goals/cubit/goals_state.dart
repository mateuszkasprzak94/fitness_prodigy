part of 'goals_cubit.dart';

class GoalsState {
  const GoalsState({
    this.items = const [],
    this.isLoading = false,
    this.errorMessage = '',
  });

  final List<GoalModel> items;
  final bool isLoading;
  final String errorMessage;
}
