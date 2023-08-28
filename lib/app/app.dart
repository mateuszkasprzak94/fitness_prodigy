import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/features_page.dart';
import 'package:fitness_prodigy/app/before%20login/main_login_page.dart';
import 'package:fitness_prodigy/app/home/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) =>
            MainLoginPage(), // Define the route for your login page
        // Define other routes here
      },
    );
  }
}

class Auth extends StatelessWidget {
  const Auth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        final user = snapshot.data;
        if (user == null) {
          return MainLoginPage();
        }
        return Features(user: user);
      },
    );
  }
}
