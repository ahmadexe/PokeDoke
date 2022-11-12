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
        return macos;
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
    apiKey: 'AIzaSyDdCgp8SxMHcYRBYhtuNZEi_DdLquMV_Qw',
    appId: '1:10924512742:web:97d8680aed41f32aecf227',
    messagingSenderId: '10924512742',
    projectId: 'pokedoke-75f8d',
    authDomain: 'pokedoke-75f8d.firebaseapp.com',
    storageBucket: 'pokedoke-75f8d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDfQ08sC6KJfHMtd0gR9K0DztU-8LfL_KM',
    appId: '1:10924512742:android:4b3d7c70d124a216ecf227',
    messagingSenderId: '10924512742',
    projectId: 'pokedoke-75f8d',
    storageBucket: 'pokedoke-75f8d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5s_TO9xWXPkJp4zdV1R9wUMONfYqFKsQ',
    appId: '1:10924512742:ios:1a49e07fe52a6261ecf227',
    messagingSenderId: '10924512742',
    projectId: 'pokedoke-75f8d',
    storageBucket: 'pokedoke-75f8d.appspot.com',
    iosClientId: '10924512742-tobn3r1lhpvls9tc4qjt9vomc9e91qn2.apps.googleusercontent.com',
    iosBundleId: 'com.example.pokedoke',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB5s_TO9xWXPkJp4zdV1R9wUMONfYqFKsQ',
    appId: '1:10924512742:ios:1a49e07fe52a6261ecf227',
    messagingSenderId: '10924512742',
    projectId: 'pokedoke-75f8d',
    storageBucket: 'pokedoke-75f8d.appspot.com',
    iosClientId: '10924512742-tobn3r1lhpvls9tc4qjt9vomc9e91qn2.apps.googleusercontent.com',
    iosBundleId: 'com.example.pokedoke',
  );
}