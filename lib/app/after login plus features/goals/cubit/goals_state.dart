part of 'goals_cubit.dart';

@immutable
class GoalsState {
  final List<QueryDocumentSnapshot<Object?>> documents;
  final bool isLoading;
  final String errorMessage;
  final bool timestamp;

  const GoalsState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
    required this.timestamp,
  });
}
