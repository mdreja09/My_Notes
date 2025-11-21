import 'package:flutter/material.dart';
class Deletescreen extends StatefulWidget {
  const Deletescreen({super.key});

  @override
  State<Deletescreen> createState() => _DeletescreenState();
}

class _DeletescreenState extends State<Deletescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Text("DeleteScreen"),
    );
  }
}
