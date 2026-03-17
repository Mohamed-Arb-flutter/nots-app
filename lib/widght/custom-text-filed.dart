import 'package:flutter/material.dart';

class Customtextfiled extends StatelessWidget {
  Customtextfiled({super.key, required this.hint, this.masline});
  final String hint;
  int? masline;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: masline,
      decoration: InputDecoration(
        hint: Text(hint),
        //hintMaxLines: masline,
        border: OutlineInputBorder(),
      ),
    );
  }
}
