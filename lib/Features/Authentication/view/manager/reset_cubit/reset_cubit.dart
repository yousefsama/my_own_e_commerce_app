import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'reset_state.dart';

class ResetCubit extends Cubit<ResetState> {
  ResetCubit() : super(ResetInitial());
  Future<void> reset({
    required String email,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      emit(ResetSuccess(
          successMessage:
              'Password Reset has been send ,please check your email'));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(ResetFailure(errorMessage: 'No user found for that email.'));
      }
    }
  }
}
