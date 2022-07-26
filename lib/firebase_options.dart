// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC0KFLVdoiy2GHm1HP3fAsZMqjxyN8CZ88',
    appId: '1:554076644329:web:5c8c5202c0653bc46ba178',
    messagingSenderId: '554076644329',
    projectId: 'walcy-6bcbd',
    authDomain: 'walcy-6bcbd.firebaseapp.com',
    databaseURL: 'https://walcy-6bcbd-default-rtdb.firebaseio.com',
    storageBucket: 'walcy-6bcbd.appspot.com',
    measurementId: 'G-9536TF3QX5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCB90nvN4B8ten4dSh0NAWk9AOn5y8X_uc',
    appId: '1:554076644329:android:94845b32714c87346ba178',
    messagingSenderId: '554076644329',
    projectId: 'walcy-6bcbd',
    databaseURL: 'https://walcy-6bcbd-default-rtdb.firebaseio.com',
    storageBucket: 'walcy-6bcbd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB-FmZlGDzrtfuDEocoo4QNshTIY84rvXs',
    appId: '1:554076644329:ios:04ee93a32e139ac66ba178',
    messagingSenderId: '554076644329',
    projectId: 'walcy-6bcbd',
    databaseURL: 'https://walcy-6bcbd-default-rtdb.firebaseio.com',
    storageBucket: 'walcy-6bcbd.appspot.com',
    iosClientId: '554076644329-77tfsgs8itno6ugd5t6rbio9bocrnlmm.apps.googleusercontent.com',
    iosBundleId: 'com.example.admin',
  );
}
