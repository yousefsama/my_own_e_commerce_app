import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    // TODO: implement onChange
    print('change= $change ');
  }

  @override
  void onClose(BlocBase bloc) {
    print('close= $bloc ');
    // TODO: implement onClose
  }

  @override
  void onCreate(BlocBase bloc) {
    print('create= $bloc ');
    // TODO: implement onCreate
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print('transition= $transition ');
    // TODO: implement onTransition
  }
}
