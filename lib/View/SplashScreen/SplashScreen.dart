import 'dart:developer';

import 'package:flutter/material.dart';


import '../BottomBar/BottomNavigation.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  autoNavigate () async{
    //log("oooooo");
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Bottomnavigation(),));
  }
  @override
  void initState() {
    // TODO: implement initState
    autoNavigate();
    super.initState();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/notespic.png"),
      ),

    );
  }
}
