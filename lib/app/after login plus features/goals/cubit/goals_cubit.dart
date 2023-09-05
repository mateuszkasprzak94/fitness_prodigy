import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

part 'goals_state.dart';

class GoalsCubit extends Cubit<GoalsState> {
  GoalsCubit()
      : super(
          const GoalsState(
            documents: [],
            errorMessage: '',
            isLoading: false,
          ),
        );

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      const GoalsState(
        documents: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription = FirebaseFirestore.instance
        .collection('goals')
        .orderBy('timestamp')
        .snapshots()
        .listen((data) {
      emit(
        GoalsState(
          documents: data.docs,
          isLoading: false,
          errorMessage: '',
        ),
      );
    })
      ..onError((error) {
        emit(
          GoalsState(
            documents: const [],
            isLoading: false,
            errorMessage: error.toString(),
          ),
        );
      });
  }

  // Future<void> add() async {
  //   await  FirebaseFirestore.instance.collection('goals').add(
  //     {
  //       'title': controller.text,
  //       'timestamp': FieldValue.serverTimestamp(),
  //     },
  //   );
  // }

  Future<void> delete(String documentId) async {
    await FirebaseFirestore.instance
        .collection('goals')
        .doc(documentId)
        .delete();
  }

  Future<void> undo(String deletedGoal, Timestamp originalTimestamp) async {
    await FirebaseFirestore.instance.collection('goals').add({
      'title': deletedGoal,
      'timestamp': originalTimestamp,
    });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
