import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TricepsPage extends StatelessWidget {
  const TricepsPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
