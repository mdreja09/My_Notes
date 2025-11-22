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
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,

        title: Text(
          "Folder",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
        ),
      ),
      body: Center(
        child: Text(
          "FolderScreen",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 33),
        ),
      ),
    );
  }
}
