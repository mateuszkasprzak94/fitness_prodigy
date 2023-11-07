import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/models/water_glass_counter_model.dart';

class WaterGlassCounterRepository {
  Stream<List<WaterModel>> getWaterStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    // Check and create 'waterCounter' document
    {
      final waterCounterDoc = FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('waterCounter')
          .doc('counter');

      waterCounterDoc.get().then((docSnapshot) {
        if (!docSnapshot.exists) {
          // If document doesn't exist, create it with initial values
          waterCounterDoc.set({
            'goal': 1, // Initial goal
            'glassCounter': 0, // Initial glass counter
          });
        }
      });
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('waterCounter')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return WaterModel(
            newGoal: doc['goal'] ?? 1,
            glassCount: doc['glassCounter'] ?? 0,
          );
        },
      ).toList();
    });
  }

  Future<void> increment() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('waterCounter')
        .doc('counter')
        .update({'glassCounter': FieldValue.increment(1)});
  }

  Future<void> decrement() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('waterCounter')
        .doc('counter')
        .update({'glassCounter': FieldValue.increment(-1)});
  }

  Future<void> updateGoal(int newGoal) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('waterCounter')
        .doc('counter')
        .update({'goal': newGoal});
  }
}
