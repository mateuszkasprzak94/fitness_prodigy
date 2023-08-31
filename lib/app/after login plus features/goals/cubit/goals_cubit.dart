import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'goals_state.dart';

class GoalsCubit extends Cubit<GoalsState> {
  GoalsCubit()
      : super(
          const GoalsState(
            documents: [],
            errorMessage: '',
            isLoading: false,
            timestamp: true,
            documentId: '',
          ),
        );

  StreamSubscription? _streamSubscription;

  Future<void> delete(String documentId) async {
    FirebaseFirestore.instance.collection('goals').doc(documentId).delete();
  }

  Future<void> start() async {
    emit(
      const GoalsState(
        documents: [],
        errorMessage: '',
        isLoading: true,
        timestamp: true,
        documentId: '',
      ),
    );

    _streamSubscription = FirebaseFirestore.instance
        .collection('goals')
        .snapshots()
        .listen((data) {
      final sortedDocs = List<QueryDocumentSnapshot>.from(data.docs)
        ..sort((a, b) {
          final aTimestamp = b['timestamp'] as Timestamp?;
          final bTimestamp = a['timestamp'] as Timestamp?;

          if (aTimestamp == null || bTimestamp == null) {
            return 0;
          }

          return bTimestamp.compareTo(aTimestamp);
        });
      emit(
        GoalsState(
          documents: sortedDocs,
          isLoading: false,
          errorMessage: '',
          timestamp: true,
          documentId: '',
        ),
      );
    })
      ..onError((error) {
        emit(
          GoalsState(
            documents: const [],
            isLoading: false,
            errorMessage: error.toString(),
            timestamp: true,
            documentId: '',
          ),
        );
      });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
