import 'package:flutter/material.dart';

import '../Noteview/view.dart';

class Trustscreen extends StatefulWidget {
  const Trustscreen({super.key});

  @override
  State<Trustscreen> createState() => _DeletescreenState();
}

class _DeletescreenState extends State<Trustscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,

        title: Text(
          "TrustScreen",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
        ),
      ),
      body: ListView.builder(itemBuilder: (context,i ) {
        return NoteViewScreen( i :i, title: '', details: '', created_at: '', );

      },
    ));
  }
}
