import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    super.key,
  });

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var errorMessage = '';
  var isCreatingAccount = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/arnold 2.png'), fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 3, 20, 165),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isCreatingAccount == true ? 'Register' : 'Login',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: widget.emailController,
                  decoration: const InputDecoration(
                    hintText: 'E-mail',
                    filled: true,
                    fillColor: Color.fromARGB(69, 255, 255, 255),
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextField(
                  controller: widget.passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Color.fromARGB(69, 255, 255, 255),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  errorMessage,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 25),
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
                      // logowanie
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.5),
                  ),
                  child: Text(
                    isCreatingAccount == true ? 'Register' : 'Login',
                    style: const TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 18.0),
                if (isCreatingAccount == false) ...[
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isCreatingAccount = true;
                      });
                    },
                    child: const Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
                if (isCreatingAccount == true) ...[
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isCreatingAccount = false;
                      });
                    },
                    child: const Text(
                      'Have an account?',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
