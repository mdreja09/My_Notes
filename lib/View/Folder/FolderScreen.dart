import 'package:flutter/material.dart';
class FolderScreen extends StatefulWidget {
  const FolderScreen({super.key});

  @override
  State<FolderScreen> createState() => _DeletescreenState();
}

class _DeletescreenState extends State<FolderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Text("FolderScreen"),
    );
  }
}
