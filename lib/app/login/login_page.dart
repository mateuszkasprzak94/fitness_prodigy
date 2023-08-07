import 'package:fintess_prodigy/app/after%20login/after_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        final user = snapshot.data;
        if (user == null) {
          return const Scaffold(
            body: Center(
              child: Text(
                'Jesteś niezalogowany',
              ),
            ),
          );
        }
        return AfterLogin(user: user);
      },
    );
  }
}
