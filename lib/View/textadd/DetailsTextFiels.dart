import 'package:flutter/material.dart';

class DetailsTextFieldWidget extends StatelessWidget {
  const DetailsTextFieldWidget({
    super.key,
    required this.detailsController,
  });

  final TextEditingController detailsController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: detailsController,
      maxLines: 100,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: "Details",

        hintStyle: TextStyle(fontSize: 23),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}