import 'package:flutter/material.dart';

class Titleadd extends StatefulWidget {
  const Titleadd({super.key});

  @override
  State<Titleadd> createState() => _TitleaddState();
}

class _TitleaddState extends State<Titleadd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.undo)],
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Title"
            ),
          ),
        ],
      ),
    );
  }
}
