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
    apiKey: 'AIzaSyCGn9cboa1MOwq4T-RpIxVsUAXedcQhPKk',
    appId: '1:510276011493:web:ff947eb60032a5396e5b0c',
    messagingSenderId: '510276011493',
    projectId: 'flutter-test-215da',
    authDomain: 'flutter-test-215da.firebaseapp.com',
    storageBucket: 'flutter-test-215da.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3Q4dsDlChOpMMKnjAKrZ03rsReafP6ik',
    appId: '1:510276011493:android:967d592b322f4b726e5b0c',
    messagingSenderId: '510276011493',
    projectId: 'flutter-test-215da',
    storageBucket: 'flutter-test-215da.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgWFC5sz_iz1r1HKgoTF8dfMGWvwgMsB0',
    appId: '1:510276011493:ios:576f485db3499daf6e5b0c',
    messagingSenderId: '510276011493',
    projectId: 'flutter-test-215da',
    storageBucket: 'flutter-test-215da.appspot.com',
    iosClientId: '510276011493-c1alv1oihdt9dtcn52ror24g79f5n15v.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFlashChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDgWFC5sz_iz1r1HKgoTF8dfMGWvwgMsB0',
    appId: '1:510276011493:ios:576f485db3499daf6e5b0c',
    messagingSenderId: '510276011493',
    projectId: 'flutter-test-215da',
    storageBucket: 'flutter-test-215da.appspot.com',
    iosClientId: '510276011493-c1alv1oihdt9dtcn52ror24g79f5n15v.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFlashChat',
  );
}
