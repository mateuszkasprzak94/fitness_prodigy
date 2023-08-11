import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class WorkoutPlansPage extends StatefulWidget {
  const WorkoutPlansPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<WorkoutPlansPage> createState() => _WorkoutPlansPageState();
}

class _WorkoutPlansPageState extends State<WorkoutPlansPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Workout Plans',
        ),
      ),
    );
  }
}
