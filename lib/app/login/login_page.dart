import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RootPage();
  }
}

class RootPage extends StatelessWidget {
  const RootPage({
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
                child: Text(
                  'Jesteś niezalogowany',
                ),
              ),
            );
          }
          return Scaffold(
            body: Center(
              child: Text(
                'Jesteś zalogowany jako ${user.email}',
              ),
            ),
          );
        });
  }
}
