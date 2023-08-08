import 'package:flutter/material.dart';

class MainLoginPage extends StatelessWidget {
  const MainLoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Jesteś niezalogowany'),
      ),
    );
  }
}
