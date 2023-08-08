import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AfterLogin extends StatelessWidget {
  const AfterLogin({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Jesteś zalogowany jako ${user.email}',
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: const Text(
              'Wyloguj',
            ),
          ),
        ],
      ),
    );
  }
}
