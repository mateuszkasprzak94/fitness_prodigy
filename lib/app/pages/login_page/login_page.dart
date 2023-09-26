import 'package:fitness_prodigy/app/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    widget.emailController.addListener(() => setState(() {}));
    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthCubit(),
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            final errorMessage = state.errorMessage;
            return Center(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/step3.png'), fit: BoxFit.fill),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 3, 20, 10),
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
                        keyboardType: TextInputType.emailAddress,
                        controller: widget.emailController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          suffixIcon: widget.emailController.text.isEmpty
                              ? Container(width: 0)
                              : IconButton(
                                  onPressed: () =>
                                      widget.emailController.clear(),
                                  icon: const Icon(Icons.close)),
                          hintText: 'E-mail',
                          filled: true,
                          fillColor: const Color.fromARGB(69, 255, 255, 255),
                          hintStyle: const TextStyle(
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
                        obscureText: isPasswordVisible,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: isPasswordVisible
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            onPressed: () => setState(
                                () => isPasswordVisible = !isPasswordVisible),
                          ),
                          hintText: 'Password',
                          filled: true,
                          fillColor: const Color.fromARGB(69, 255, 255, 255),
                          hintStyle: const TextStyle(
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
                      // const SizedBox(height: 25),
                      ElevatedButton(
                        onPressed: () {
                          if (isCreatingAccount == true) {
                            // rejestracja
                            // try {
                            context.read<AuthCubit>().register(
                                widget.emailController.text,
                                widget.passwordController.text);
                            // await FirebaseAuth.instance
                            //     .createUserWithEmailAndPassword(
                            //   email: widget.emailController.text,
                            //   password: widget.passwordController.text,
                            // );
                            //   } catch (error) {
                            //     setState(() {
                            //       errorMessage = error.toString();
                            //     });
                            //   }
                          } else {
                            //   // logowanie
                            //   try {
                            context.read<AuthCubit>().signIn(
                                widget.emailController.text,
                                widget.passwordController.text);
                            // await FirebaseAuth.instance.signInWithEmailAndPassword(
                            //   email: widget.emailController.text,
                            //   password: widget.passwordController.text,
                            // );
                            // } catch (error) {
                            //   setState(() {
                            //     errorMessage = error.toString();
                            //   });
                            // }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.5),
                        ),
                        child: Text(
                          isCreatingAccount == true ? 'Register' : 'Login',
                          style: const TextStyle(
                            color: Colors.white,
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
                              color: Colors.white,
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
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
