import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/models/goal_model.dart';
import 'package:fitness_prodigy/app/repositories/goals_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goals_cubit.freezed.dart';
part 'goals_state.dart';

class GoalsCubit extends Cubit<GoalsState> {
  GoalsCubit({required this.goalsRepository}) : super(GoalsState());

  final GoalsRepository goalsRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      GoalsState(
        items: [],
        errorMessage: '',
        isLoading: true,
      ),
    );
    _streamSubscription = goalsRepository.getGoalsStream().listen((items) {
      emit(GoalsState(items: items));
    })
      ..onError((error) {
        emit(
          GoalsState(
            items: const [],
            isLoading: false,
            errorMessage: error.toString(),
          ),
        );
      });
  }

  Future<void> add(String controller) async {
    await goalsRepository.add(controller: controller);
  }

  Future<void> delete({required String documentID}) async {
    await goalsRepository.delete(documentID: documentID);
  }

  Future<void> undo(
      {required String deletedGoal, required originalTimestamp}) async {
    await goalsRepository.undo(
        deletedGoal: deletedGoal, originalTimestamp: originalTimestamp);
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
