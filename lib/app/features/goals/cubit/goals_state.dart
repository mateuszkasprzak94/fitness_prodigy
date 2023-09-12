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

// class GoalsState {
//   final List<QueryDocumentSnapshot<Object?>> documents;
//   final bool isLoading;
//   final String errorMessage;

//   const GoalsState({
//     required this.documents,
//     required this.isLoading,
//     required this.errorMessage,
//   });
// }
