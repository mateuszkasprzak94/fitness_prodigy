import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/models/goal_model.dart';

part 'goals_state.dart';

class GoalsCubit extends Cubit<GoalsState> {
  GoalsCubit() : super(const GoalsState());

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    emit(
      const GoalsState(
        items: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription = FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('goals')
        .orderBy('timestamp')
        .snapshots()
        .listen((items) {
      final goalModels = items.docs.map((doc) {
        return GoalModel(
          id: doc.id,
          title: doc['title'],
          timestamp: doc['timestamp'],
        );
      }).toList();
      emit(GoalsState(items: goalModels));
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
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('goals')
        .add(
      {
        'title': controller,
        'timestamp': FieldValue.serverTimestamp(),
      },
    );
  }

  Future<void> delete({required String documentID}) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('goals')
        .doc(documentID)
        .delete();
  }

  Future<void> undo(
      {required String deletedGoal,
      required Timestamp originalTimestamp}) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('goals')
        .add({
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
