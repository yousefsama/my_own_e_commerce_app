part of 'reset_cubit.dart';

@immutable
sealed class ResetState {}

final class ResetInitial extends ResetState {}

final class ResetSuccess extends ResetState {
  final String successMessage;

  ResetSuccess({required this.successMessage});
}

final class ResetFailure extends ResetState {
  final String errorMessage;

  ResetFailure({required this.errorMessage});
}
