import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notes/Database/notes.dart';
import 'package:notes/View/textadd/DetailsTextFiels.dart';
import 'package:notes/View/textadd/titleTextField.dart';

class Edittext extends StatefulWidget {
  const Edittext({super.key});

  @override
  State<Edittext> createState() => _EdittextState();
}

class _EdittextState extends State<Edittext> {
  TextEditingController titleController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Edit Text")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),

              child: TitleTextFieldWidget(titleController: titleController),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: DetailsTextFieldWidget(detailsController: detailsController),
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {

          log("${titleController.text}");
          log("${detailsController.text}");

          Map<String,dynamic> data = {
            "title": titleController.text,
            "details": detailsController.text,
            "id": 1,
            "created_at": "${DateTime.now()}",
           // log("===========$data")

          };
          log("++++++++++++$data");
          log(" ============${NotesData.list.length}");
          NotesData.list.add(data);
          log(" ============${NotesData.list.length}");
          Navigator.pop(context);

        },
        child: Text(
          "Save",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}



