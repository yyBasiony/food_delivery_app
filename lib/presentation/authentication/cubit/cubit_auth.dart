import 'package:bloc/bloc.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {}

class AuthFailure extends AuthState {
  final String message;
  AuthFailure(this.message);
}

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final String emailPattern =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  final String passwordPattern =
      r'^(?=.*?[A-Za-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
  final int minPasswordLength = 6;

  Future<void> login(String email, String password) async {
    emit(AuthLoading());

    final emailRegex = RegExp(emailPattern);
    final passwordRegex = RegExp(passwordPattern);

    if (!emailRegex.hasMatch(email)) {
      emit(AuthFailure('Please enter a valid email address'));
      return;
    }

    if (password.length < minPasswordLength ||
        !passwordRegex.hasMatch(password)) {
      emit(AuthFailure(
          'Password must be at least $minPasswordLength characters long, contain letters, numbers, and at least one special character'));
      return;
    }

    emit(AuthSuccess());
  }

  Future<void> register(String email, String password) async {
    emit(AuthLoading());

    final emailRegex = RegExp(emailPattern);
    final passwordRegex = RegExp(passwordPattern);

    if (!emailRegex.hasMatch(email)) {
      emit(AuthFailure('Please enter a valid email address'));
      return;
    }

    if (password.length < minPasswordLength ||
        !passwordRegex.hasMatch(password)) {
      emit(AuthFailure(
          'Password must be at least $minPasswordLength characters long, contain letters, numbers, and at least one special character'));
      return;
    }

    await Future.delayed(const Duration(seconds: 2));

    emit(AuthSuccess());
  }

  Future<void> resetPassword(String email) async {
    emit(AuthLoading());

    final emailRegex = RegExp(emailPattern);

    if (!emailRegex.hasMatch(email)) {
      emit(AuthFailure('Please enter a valid email address'));
      return;
    }

    await Future.delayed(const Duration(seconds: 2));

    emit(AuthSuccess());
  }
}
