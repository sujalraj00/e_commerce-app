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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: //,
    appId: //,
    messagingSenderId: '669127976670',
    projectId: 'ecommerceapp-20cc5',
    authDomain: 'ecommerceapp-20cc5.firebaseapp.com',
    storageBucket: 'ecommerceapp-20cc5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: //,
    appId: //,
    messagingSenderId: '669127976670',
    projectId: 'ecommerceapp-20cc5',
    storageBucket: 'ecommerceapp-20cc5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: //,
    appId: //',
    messagingSenderId: '669127976670',
    projectId: 'ecommerceapp-20cc5',
    storageBucket: 'ecommerceapp-20cc5.appspot.com',
    androidClientId: '669127976670-f0cla470qbmorr42nq2u2orfq1fvqr1h.apps.googleusercontent.com',
    iosClientId: '669127976670-4o35cu5ho6eeiobni3kcl8gbukmnb5vk.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerce',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: //,
    appId: //,
    messagingSenderId: '669127976670',
    projectId: 'ecommerceapp-20cc5',
    authDomain: 'ecommerceapp-20cc5.firebaseapp.com',
    storageBucket: 'ecommerceapp-20cc5.appspot.com',
  );

}