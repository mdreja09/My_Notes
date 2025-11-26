import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notes/Database/notes.dart';

import '../textadd/add_text.dart';
import 'Widget/SearchFieldWidget.dart';
import 'Widget/cardwidget.dart';
import 'Widget/note_card.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  List infoDetails = [""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.blue,
              child: Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {},
            ),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.white,

        centerTitle: true,
        title: Text(
          "Notes",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Notes",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),

            //Divider(thickness: 3, color: Colors.grey.withOpacity(0.6)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Expanded(child: SearchFieldWidget()),

                  Container(
                    height: 45,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.tune, size: 22),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: NotesData.list.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => InkWell(
                  onLongPress: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            "Confomation",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          content: Text(
                            "Are you sure you want to delete this note",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          actions: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                log("message");
                              },

                              child: Text(
                                "Cencel",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23,
                                ),
                              ),
                            ),

                            SizedBox(width: 20),
                            InkWell(
                              onTap: () {
                                NotesData.trashList.add(
                                  NotesData.list[index],
                                );


                                NotesData.list.removeAt(index);
                                setState(() {});
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Delete",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: NoteCardWidget(index: index),
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: InkWell(
        onTap: () {

          log("=========");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Edittext()),
          ).then(((c) {
            setState(() {});
          }));
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.amber,
          child: Icon(Icons.add, size: 40, color: Colors.white),
        ),
      ),
    );
  }
}
