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
    apiKey: 'AIzaSyDFyYnvj_N0CELGKxgSj-e2UjS3MesV0Hc',
    appId: '1:10933874781:web:d3ffe995f24406dcc59db4',
    messagingSenderId: '10933874781',
    projectId: 'fir-flutter-7d1fd',
    authDomain: 'fir-flutter-7d1fd.firebaseapp.com',
    storageBucket: 'fir-flutter-7d1fd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBi_ADIXpvR2bj1WON3DuaWlbCkKh9EgxU',
    appId: '1:10933874781:android:8d6269bb987591c0c59db4',
    messagingSenderId: '10933874781',
    projectId: 'fir-flutter-7d1fd',
    storageBucket: 'fir-flutter-7d1fd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCv-Nbv20aqro0pwJ51mrw2Iwb4kcMNZzQ',
    appId: '1:10933874781:ios:1ad2744c76cc1660c59db4',
    messagingSenderId: '10933874781',
    projectId: 'fir-flutter-7d1fd',
    storageBucket: 'fir-flutter-7d1fd.appspot.com',
    iosClientId: '10933874781-te9ficp7tk3b904s4ol8f3n2hduugtie.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCv-Nbv20aqro0pwJ51mrw2Iwb4kcMNZzQ',
    appId: '1:10933874781:ios:1ad2744c76cc1660c59db4',
    messagingSenderId: '10933874781',
    projectId: 'fir-flutter-7d1fd',
    storageBucket: 'fir-flutter-7d1fd.appspot.com',
    iosClientId: '10933874781-te9ficp7tk3b904s4ol8f3n2hduugtie.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );
}
