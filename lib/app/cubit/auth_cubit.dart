import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : super(
          const AuthState(
            user: null,
            isLoading: false,
            errorMessage: '',
          ),
        );

  StreamSubscription? _streamSubscription;

  Future<void> register(
    String emailController,
    String passwordController,
  ) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController,
      password: passwordController,
    );
  }

  Future<void> signIn(
    String emailController,
    String passwordController,
  ) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController,
      password: passwordController,
    );
  }

  Future<void> signOut() async {
    FirebaseAuth.instance.signOut();
  }

  Future<void> start() async {
    emit(
      const AuthState(
        user: null,
        isLoading: true,
        errorMessage: '',
      ),
    );

    _streamSubscription =
        FirebaseAuth.instance.authStateChanges().listen((user) {
      emit(
        AuthState(
          user: user,
          isLoading: false,
          errorMessage: '',
        ),
      );
    })
          ..onError((error) {
            emit(
              AuthState(
                user: null,
                isLoading: false,
                errorMessage: error.toString(),
              ),
            );
          });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
