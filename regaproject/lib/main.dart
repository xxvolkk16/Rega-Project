import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';  // Import Firebase core
import 'firebase_options.dart';  // Import generated firebase_options.dart
import 'package:regaproject/Home/Home.dart';
import 'Sign-In/SignIn.dart';
import 'Sign-Up/SignUp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  // Ensure widgets binding is initialized
  await Firebase.initializeApp(  // Initialize Firebase
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MaterialApp(
      home: SignInPage(),
    ),
  );
}
