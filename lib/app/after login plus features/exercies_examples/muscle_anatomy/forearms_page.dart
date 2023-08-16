import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForearmsPage extends StatelessWidget {
  const ForearmsPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forearms Exercise'),
      ),
    );
  }
}