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
    apiKey: 'AIzaSyDBG3WrI9mAfEie51Wrb53wHrrHYBqNzWY',
    appId: '1:377694523626:web:c4ff466ca9a0c1c128c793',
    messagingSenderId: '377694523626',
    projectId: 'test-2ef67',
    authDomain: 'test-2ef67.firebaseapp.com',
    storageBucket: 'test-2ef67.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDIqcg_SHLmiOWQkRUBQqNUWBaTNjJp4kc',
    appId: '1:377694523626:android:4200231c464a578028c793',
    messagingSenderId: '377694523626',
    projectId: 'test-2ef67',
    storageBucket: 'test-2ef67.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFpt79FGmDnfnWDLZD8dqwhMr6k6jrBRY',
    appId: '1:377694523626:ios:135097bdfbf5358228c793',
    messagingSenderId: '377694523626',
    projectId: 'test-2ef67',
    storageBucket: 'test-2ef67.appspot.com',
    iosClientId: '377694523626-6bmuh8qrhv6evhanjpim80epgmfvnh5a.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAFpt79FGmDnfnWDLZD8dqwhMr6k6jrBRY',
    appId: '1:377694523626:ios:135097bdfbf5358228c793',
    messagingSenderId: '377694523626',
    projectId: 'test-2ef67',
    storageBucket: 'test-2ef67.appspot.com',
    iosClientId: '377694523626-6bmuh8qrhv6evhanjpim80epgmfvnh5a.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}