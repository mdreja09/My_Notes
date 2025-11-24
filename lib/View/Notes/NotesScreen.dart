import 'package:flutter/material.dart';

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
      backgroundColor: Colors.white,
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
        backgroundColor: Colors.blueAccent,

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
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.mic),
                        hintText: "Search Notes",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(23),
                        ),
                      ),
                    ),
                  ),

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
            SizedBox(height: 30),

            ListTile(
              trailing: Text(
                "11:50",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),

              tileColor: Colors.white,

              //focusColor: Colors.grey,
              title: Text(
                "My name is Reja",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
              ),

              subtitle: Text(
                "Please see your identification",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),

            Text("data"),
          ],
        ),
      ),

      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.amber,
        child: Icon(Icons.add, size: 40, color: Colors.white),
      ),
    );
  }
}
