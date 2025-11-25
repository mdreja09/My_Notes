import 'package:flutter/material.dart';

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
      body:  Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
               // prefixIcon: Icon(Icons.search),
                //suffixIcon: Icon(Icons.mic),
                //hintText: "Search Notes",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                // prefixIcon: Icon(Icons.search),
                //suffixIcon: Icon(Icons.mic),
                //hintText: "Search Notes",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

          ],
        ),

      ),
    );
  }
}
