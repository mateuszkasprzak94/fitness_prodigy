part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    User? user,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _AuthState;
}


// @immutable
// class AuthState {
//   final User? user;
//   final bool isLoading;
//   final String errorMessage;

//   const AuthState({
//     required this.user,
//     required this.isLoading,
//     required this.errorMessage,
//   });
// }
