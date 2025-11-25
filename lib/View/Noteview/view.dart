import 'package:flutter/material.dart';

class NoteViewScreen extends StatelessWidget {
  const NoteViewScreen({
    super.key,
    required this.title,
    required this.details,
    required this.created_at,
  });

  final String title;
  final String details;
  final String created_at;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is a note View Screen")),
      body: Center(
        child: Column(
          children: [Text("$title"), Text("$details"), Text("$created_at")],
        ),
      ),
    );
  }
}
