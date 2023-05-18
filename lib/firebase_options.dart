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
    apiKey: 'AIzaSyC3A5h92oKaa4Dm8Z6Wb5ZoQGCrNXjTeEE',
    appId: '1:67092588535:web:710737f526dbc941c830f2',
    messagingSenderId: '67092588535',
    projectId: 'chitchat-70016',
    authDomain: 'chitchat-70016.firebaseapp.com',
    storageBucket: 'chitchat-70016.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCoUewQrgIlZiVSyDwMEPMqXNVAZIoezOI',
    appId: '1:67092588535:android:2bd22ef2956fe573c830f2',
    messagingSenderId: '67092588535',
    projectId: 'chitchat-70016',
    storageBucket: 'chitchat-70016.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA69RdgtIWZRqezCWaECXQicMgsEZefuVE',
    appId: '1:67092588535:ios:74fea75ad1b43acbc830f2',
    messagingSenderId: '67092588535',
    projectId: 'chitchat-70016',
    storageBucket: 'chitchat-70016.appspot.com',
    iosClientId: '67092588535-jg0njck7p81fqh50ivbs4t7k08g854m2.apps.googleusercontent.com',
    iosBundleId: 'com.example.chitchat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA69RdgtIWZRqezCWaECXQicMgsEZefuVE',
    appId: '1:67092588535:ios:74fea75ad1b43acbc830f2',
    messagingSenderId: '67092588535',
    projectId: 'chitchat-70016',
    storageBucket: 'chitchat-70016.appspot.com',
    iosClientId: '67092588535-jg0njck7p81fqh50ivbs4t7k08g854m2.apps.googleusercontent.com',
    iosBundleId: 'com.example.chitchat',
  );
}
