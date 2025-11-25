import 'package:flutter/material.dart';

class Edittext extends StatefulWidget {
  const Edittext({super.key});

  @override
  State<Edittext> createState() => _EdittextState();
}

class _EdittextState extends State<Edittext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Edit Text")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Title",
                hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                //contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Details",

                hintStyle: TextStyle(fontSize: 23),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
