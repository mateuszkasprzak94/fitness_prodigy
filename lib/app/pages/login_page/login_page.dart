import 'package:fitness_prodigy/app/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: BlocProvider(
          create: (context) => AuthCubit(),
          child: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              final errorMessage = state.errorMessage;
              return Center(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/step.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 3, 20, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          isCreatingAccount == true
                              ? AppLocalizations.of(context).register
                              : AppLocalizations.of(context).login,
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
                            hintText: AppLocalizations.of(context).email,
                            filled: true,
                            fillColor: const Color.fromARGB(69, 255, 255, 255),
                            hintStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          style: const TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        TextField(
                          controller: widget.passwordController,
                          obscureText: isPasswordVisible,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.key),
                            suffixIcon: IconButton(
                              icon: isPasswordVisible
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                              onPressed: () => setState(
                                  () => isPasswordVisible = !isPasswordVisible),
                            ),
                            hintText: AppLocalizations.of(context).password,
                            filled: true,
                            fillColor: const Color.fromARGB(69, 255, 255, 255),
                            hintStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          errorMessage as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 253, 29, 13),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (isCreatingAccount == true) {
                              // rejestracja

                              context.read<AuthCubit>().register(
                                  widget.emailController.text,
                                  widget.passwordController.text);
                            } else {
                              // logowanie
                              context.read<AuthCubit>().signIn(
                                  widget.emailController.text,
                                  widget.passwordController.text);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.5),
                          ),
                          child: Text(
                            isCreatingAccount == true
                                ? AppLocalizations.of(context).registerr
                                : AppLocalizations.of(context).loginn,
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
                            child: Text(
                              AppLocalizations.of(context).createAccount,
                              style: const TextStyle(
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
                            child: Text(
                              AppLocalizations.of(context).haveAccount,
                              style: const TextStyle(
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
      ),
    );
  }
}
