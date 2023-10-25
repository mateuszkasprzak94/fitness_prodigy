import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/models/goal_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class GoalsRepository {
  Stream<List<GoalModel>> getGoalsStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('goals')
        .orderBy('timestamp')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          final timestamp = doc['timestamp'] as Timestamp?;
          return GoalModel(
            id: doc.id,
            title: doc['title'],
            timestamp: timestamp ?? Timestamp.now(),
          );
        },
      ).toList();
    });
  }

  Future<void> add({required String controller}) async {
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

  Future<void> delete({required String documentID}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('goals')
        .doc(documentID)
        .delete();
  }

  Future<void> undo(
      {required String deletedGoal, required Timestamp originalTimestamp}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('goals')
        .add({
      'title': deletedGoal,
      'timestamp': originalTimestamp,
    });
  }
}
