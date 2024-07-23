import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:spotify/login.dart';
import 'package:spotify/spotify.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyCmdWFl403hbP66sq5zl3u1S9akHVcXyg8",
        appId: "1:700970720325:web:c30f1d51a9dac24f9e172c",
        messagingSenderId: "700970720325",
        projectId: "spotify-28be3",
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,

      home:spotify()
    );
  }
}

