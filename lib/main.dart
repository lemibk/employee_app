//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// import login screen
//import 'package:firebasedapp/auth/login_screen.dart';
import 'package:employee_app/db/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // if (kIsWeb) {
  //   await Firebase.initializeApp(
  //       options: const FirebaseOptions(
  //           apiKey: "AIzaSyDFTVI5egNAC9PATNo18lZw7qBM7_lzMDg",
  //           authDomain: "fir-dapp-cb6a8.firebaseapp.com",
  //           projectId: "fir-dapp-cb6a8",
  //           storageBucket: "fir-dapp-cb6a8.appspot.com",
  //           messagingSenderId: "1034524018026",
  //           appId: "1:1034524018026:web:2ee32b96806145e54d5113"));
  // } else {
  //   await Firebase.initializeApp();
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
