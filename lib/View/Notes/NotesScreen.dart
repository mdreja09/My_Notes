import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        leading: Drawer(backgroundColor: Colors.grey,),
        title: Text("Notes",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),
      ),
    );
  }
}
