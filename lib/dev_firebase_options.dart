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
        return windows;
      case TargetPlatform.linux:
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCXbVk07yUJfWUBWePs38ocwwF7spSVqm8',
    appId: '1:1091798916894:web:8bbc2bf0016017eb34f30f',
    messagingSenderId: '1091798916894',
    projectId: 'personal-project-dev-c5a7f',
    authDomain: 'personal-project-dev-c5a7f.firebaseapp.com',
    storageBucket: 'personal-project-dev-c5a7f.appspot.com',
    measurementId: 'G-PF0RT992GM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBGaon-XeO40zUZWmB59h3_vxnzSR3TSnY',
    appId: '1:1091798916894:android:44c3461cb829147c34f30f',
    messagingSenderId: '1091798916894',
    projectId: 'personal-project-dev-c5a7f',
    storageBucket: 'personal-project-dev-c5a7f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBBwypaaH9kSBOPVO2JxLgjDatp7fhYE-w',
    appId: '1:1091798916894:ios:b320fd6473c2ced134f30f',
    messagingSenderId: '1091798916894',
    projectId: 'personal-project-dev-c5a7f',
    storageBucket: 'personal-project-dev-c5a7f.appspot.com',
    iosClientId: '1091798916894-ncmao23ajin0d2cvclfmramuus53ks0o.apps.googleusercontent.com',
    iosBundleId: 'com.example.personalProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBBwypaaH9kSBOPVO2JxLgjDatp7fhYE-w',
    appId: '1:1091798916894:ios:b320fd6473c2ced134f30f',
    messagingSenderId: '1091798916894',
    projectId: 'personal-project-dev-c5a7f',
    storageBucket: 'personal-project-dev-c5a7f.appspot.com',
    iosClientId: '1091798916894-ncmao23ajin0d2cvclfmramuus53ks0o.apps.googleusercontent.com',
    iosBundleId: 'com.example.personalProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCXbVk07yUJfWUBWePs38ocwwF7spSVqm8',
    appId: '1:1091798916894:web:8ade94f182a9d25734f30f',
    messagingSenderId: '1091798916894',
    projectId: 'personal-project-dev-c5a7f',
    authDomain: 'personal-project-dev-c5a7f.firebaseapp.com',
    storageBucket: 'personal-project-dev-c5a7f.appspot.com',
    measurementId: 'G-L0JMRBNC39',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyCXbVk07yUJfWUBWePs38ocwwF7spSVqm8',
    appId: '1:1091798916894:web:da01ef25f7f9632834f30f',
    messagingSenderId: '1091798916894',
    projectId: 'personal-project-dev-c5a7f',
    authDomain: 'personal-project-dev-c5a7f.firebaseapp.com',
    storageBucket: 'personal-project-dev-c5a7f.appspot.com',
    measurementId: 'G-G79GPSEJQQ',
  );
}
