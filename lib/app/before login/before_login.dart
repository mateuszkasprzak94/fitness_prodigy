import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class BeforeLogin extends StatefulWidget {
  BeforeLogin({
    super.key,
  });

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<BeforeLogin> createState() => _BeforeLoginState();
}

class _BeforeLoginState extends State<BeforeLogin> {
  var errorMessage = '';
  var isCreatingAccount = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(isCreatingAccount == true ? 'Register' : 'Login'),
              const SizedBox(height: 20),
              TextField(
                controller: widget.emailController,
                decoration: const InputDecoration(hintText: 'E-mail'),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(errorMessage),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (isCreatingAccount == true) {
                    // rejestracja
                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: widget.emailController.text,
                        password: widget.passwordController.text,
                      );
                    } catch (error) {
                      setState(() {
                        errorMessage = error.toString();
                      });
                    }
                  } else {
                    //logowanie
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: widget.emailController.text,
                        password: widget.passwordController.text,
                      );
                    } catch (error) {
                      setState(() {
                        errorMessage = error.toString();
                      });
                    }
                  }
                },
                child: Text(isCreatingAccount == true ? 'Register' : 'Login'),
              ),
              const SizedBox(
                height: 20,
              ),
              if (isCreatingAccount == false) ...[
                TextButton(
                  onPressed: () {
                    setState(() {
                      isCreatingAccount = true;
                    });
                  },
                  child: const Text('Create account'),
                ),
              ],
              if (isCreatingAccount == true) ...[
                TextButton(
                  onPressed: () {
                    setState(() {
                      isCreatingAccount = false;
                    });
                  },
                  child: const Text('Do you already have an account?'),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
