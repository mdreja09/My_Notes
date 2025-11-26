import 'package:flutter/material.dart';

import 'View/BottomBar/BottomNavigation.dart';
import 'View/Notes/NotesScreen.dart';
import 'View/SplashScreen/SplashScreen.dart';
import 'View/textadd/add_text.dart';




void main () {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Splashscreen(),


      ),
    );
  }
}
