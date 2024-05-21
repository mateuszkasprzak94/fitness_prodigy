import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/core/text_styles.dart';
import 'package:fitness_prodigy/app/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

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
        resizeToAvoidBottomInset: false,
        body: BlocProvider(
          create: (context) => AuthCubit(),
          child: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              final errorMessage = state.errorMessage;
              return Center(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: kHomeGradient,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Text(
                          isCreatingAccount == true
                              ? AppLocalizations.of(context).register
                              : AppLocalizations.of(context).login,
                          style: loginTextStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 30),
                        child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: widget.emailController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (email) =>
                                email != null && !EmailValidator.validate(email)
                                    ? 'Enter a valid email'
                                    : null,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                              prefixIcon: const Icon(
                                Icons.email,
                                color: Colors.black87,
                              ),
                              suffixIcon: widget.emailController.text.isEmpty
                                  ? Container(width: 0)
                                  : IconButton(
                                      onPressed: () =>
                                          widget.emailController.clear(),
                                      icon: const Icon(Icons.close),
                                    ),
                              hintText: AppLocalizations.of(context).email,
                              filled: true,
                              fillColor: Colors.white,
                              hintStyle: textfieldHintStyle,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 18, horizontal: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            style: textfieldStyle),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: widget.passwordController,
                          obscureText: isPasswordVisible,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            prefixIcon: const Icon(
                              Icons.key,
                              color: Colors.black87,
                            ),
                            suffixIcon: IconButton(
                              icon: isPasswordVisible
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                              onPressed: () => setState(
                                  () => isPasswordVisible = !isPasswordVisible),
                            ),
                            hintText: AppLocalizations.of(context).password,
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: textfieldHintStyle,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 18, horizontal: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          style: GoogleFonts.roboto(
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          errorMessage as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 253, 29, 13),
                          ),
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
                          backgroundColor: Colors.amber.shade600,
                        ),
                        child: Text(
                          isCreatingAccount == true
                              ? AppLocalizations.of(context).registerr
                              : AppLocalizations.of(context).loginn,
                          style: loginRegisterTextStyle,
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
                            style: haveOrCreateTextStyle,
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
                            style: haveOrCreateTextStyle,
                          ),
                        ),
                      ],
                    ],
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
