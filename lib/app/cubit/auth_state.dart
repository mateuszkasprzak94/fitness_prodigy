part of 'auth_cubit.dart';

@immutable
class AuthState {
  final User? user;
  final bool isLoading;
  final String errorMessage;

  const AuthState({
    required this.user,
    required this.isLoading,
    required this.errorMessage,
  });
}
