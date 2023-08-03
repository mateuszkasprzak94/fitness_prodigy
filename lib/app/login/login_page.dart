import 'package:fintess_prodigy/app/features/features_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
        ),
      ),
      body: const Center(
        child: Text("Login Page Content"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const Features(),
            ),
          );
        },
        backgroundColor: Colors.blue,
        child: const Text('Features'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'images/hantla.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          height: 20.0,
          width: 20.0,
        ),
      ),
    );
  }
}
