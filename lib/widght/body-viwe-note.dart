import 'package:flutter/material.dart';
import 'package:note_app/widght/custom-appbar.dart';
import 'package:note_app/widght/custom-text-filed.dart';

class Bodyviwenote extends StatelessWidget {
  const Bodyviwenote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 40),
          Customappbar(titletex: 'Edit Note',icon: Icons.check,),
          SizedBox(height: 20),
          Customtextfiled(hint: 'title'),
          SizedBox(height: 15),
          Customtextfiled(hint: 'Contant', masline: 5),
        ],
      ),
    );
  }
}
