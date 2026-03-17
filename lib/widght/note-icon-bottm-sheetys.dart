import 'package:flutter/material.dart';
import 'package:note_app/widght/custom-text-filed.dart';

class noteiconbottmsheets extends StatelessWidget {
  const noteiconbottmsheets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Customtextfiled(hint: 'Title'),
          SizedBox(height: 20),
          Customtextfiled(hint: 'contant', masline: 5),
        ],
      ),
    );
  }
}
