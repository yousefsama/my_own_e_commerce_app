part of 'signin_cubit.dart';

@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}

final class SigninSuccess extends SigninState {}

final class SigninFailure extends SigninState {
  final String errorMessage;

  SigninFailure({required this.errorMessage});
}

final class SigninLoading extends SigninState {}
