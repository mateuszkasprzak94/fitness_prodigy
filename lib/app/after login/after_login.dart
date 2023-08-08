import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AfterLogin extends StatelessWidget {
  const AfterLogin({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Jesteś zalogowany jako ${user.email}'),
      ),
    );
  }
}
