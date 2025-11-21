import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notes/View/Delete/DeleteScreen.dart';
import 'package:notes/View/Folder/FolderScreen.dart';
import 'package:notes/View/Home/HomeScreen.dart';
import 'package:notes/View/Settings/SettingsScreen.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  List Screens = [
    Homescreen(),
    FolderScreen(),
    Deletescreen(),
    Settingsscreen(),
  ];

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[selectIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        onTap: (v) {
          setState(() {});
          log("===4v");
          setState(() {
            selectIndex = v;
          });
        },

        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white30,

        //selectedIconTheme: IconThemeData(color: Colors.black),
        //unselectedIconTheme: IconThemeData(color: Colors.black),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: " Folder"),
          BottomNavigationBarItem(icon: Icon(Icons.delete), label: "Trash"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }
}
