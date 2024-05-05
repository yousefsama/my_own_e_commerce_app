// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA9cNBi1EoeCn28ogREbEfqvPZDau2nMJQ',
    appId: '1:201553634022:web:d93611cfbdc8b405b1d127',
    messagingSenderId: '201553634022',
    projectId: 'my-own-ecommerce',
    authDomain: 'my-own-ecommerce.firebaseapp.com',
    storageBucket: 'my-own-ecommerce.appspot.com',
    measurementId: 'G-5PKKF2T59G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDW37Txmq5Q10FRlhvnjquGSAxBY7DMFDI',
    appId: '1:201553634022:android:097cdbf846137483b1d127',
    messagingSenderId: '201553634022',
    projectId: 'my-own-ecommerce',
    storageBucket: 'my-own-ecommerce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcGQFsjhh_bsG-7c0S54KLzlnDZNQCaUQ',
    appId: '1:201553634022:ios:9de6a909ee891ec1b1d127',
    messagingSenderId: '201553634022',
    projectId: 'my-own-ecommerce',
    storageBucket: 'my-own-ecommerce.appspot.com',
    iosBundleId: 'com.example.myOwnECommerceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAcGQFsjhh_bsG-7c0S54KLzlnDZNQCaUQ',
    appId: '1:201553634022:ios:9de6a909ee891ec1b1d127',
    messagingSenderId: '201553634022',
    projectId: 'my-own-ecommerce',
    storageBucket: 'my-own-ecommerce.appspot.com',
    iosBundleId: 'com.example.myOwnECommerceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA9cNBi1EoeCn28ogREbEfqvPZDau2nMJQ',
    appId: '1:201553634022:web:9bc4cc7cec0eff2ab1d127',
    messagingSenderId: '201553634022',
    projectId: 'my-own-ecommerce',
    authDomain: 'my-own-ecommerce.firebaseapp.com',
    storageBucket: 'my-own-ecommerce.appspot.com',
    measurementId: 'G-5XBLN2KPJ1',
  );
}