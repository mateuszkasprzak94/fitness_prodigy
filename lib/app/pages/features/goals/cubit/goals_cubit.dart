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




// OLD CODE

//  Future<void> start() async {
//  final userID = FirebaseAuth.instance.currentUser?.uid;
//     if (userID == null) {
//       throw Exception('User is not logged in');
//     }
//     emit(
//       const GoalsState(
//         items: [],
//         errorMessage: '',
//         isLoading: true,
//       ),
//     );

    //   _streamSubscription = FirebaseFirestore.instance
    //       .collection('users')
    //       .doc(userID)
    //       .collection('goals')
    //       .orderBy('timestamp')
    //       .snapshots()
    //       .listen((items) {
    //     final goalModels = items.docs.map((doc) {
    //       final timestamp = doc['timestamp'] as Timestamp?;
    //       return GoalModel(
    //         id: doc.id,
    //         title: doc['title'],
    //         timestamp: timestamp ?? Timestamp.now(),
    //       );
    //     }).toList();
    //     emit(GoalsState(items: goalModels));
    //   })
    //     ..onError((error) {
    //       emit(
    //         GoalsState(
    //           items: const [],
    //           isLoading: false,
    //           errorMessage: error.toString(),
    //         ),
    //       );
    //     });
    // }

      // Future<void> add(String controller) async {
  //   final userID = FirebaseAuth.instance.currentUser?.uid;
  //   if (userID == null) {
  //     throw Exception('User is not logged in');
  //   }
  //   await FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(userID)
  //       .collection('goals')
  //       .add(
  //     {
  //       'title': controller,
  //       'timestamp': FieldValue.serverTimestamp(),
  //     },
  //   );
  // }

  // Future<void> delete({required String documentID}) async {
  //   final userID = FirebaseAuth.instance.currentUser?.uid;
  //   if (userID == null) {
  //     throw Exception('User is not logged in');
  //   }
  //   await FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(userID)
  //       .collection('goals')
  //       .doc(documentID)
  //       .delete();
  // }

  // Future<void> undo(
  //     {required String deletedGoal,
  //     required Timestamp originalTimestamp}) async {
  //   final userID = FirebaseAuth.instance.currentUser?.uid;
  //   if (userID == null) {
  //     throw Exception('User is not logged in');
  //   }
  //   await FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(userID)
  //       .collection('goals')
  //       .add({
  //     'title': deletedGoal,
  //     'timestamp': originalTimestamp,
  //   });
  // }