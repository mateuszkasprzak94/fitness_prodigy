import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login/after_login.dart';
import 'package:flutter/material.dart';

class BeforeLogin extends StatelessWidget {
  const BeforeLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          final user = snapshot.data;
          if (user == null) {
            return const Scaffold(
              body: Center(
                child: Text('Jesteś niezalogowany'),
              ),
            );
          }
          return AfterLogin(user: user);
        });
  }
}
