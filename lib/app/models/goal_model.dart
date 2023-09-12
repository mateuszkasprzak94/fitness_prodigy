import 'package:cloud_firestore/cloud_firestore.dart';

class GoalModel {
  GoalModel({
    required this.id,
    required this.title,
    required this.timestamp,
  });

  final String id;
  final String title;
  final Timestamp timestamp;
}
