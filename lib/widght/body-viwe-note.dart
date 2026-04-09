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
          const SizedBox(height: 40),
          const Customappbar(titletex: 'Edit Note', icon: Icons.check),
          const SizedBox(height: 20),
          Customtextfiled(hint: 'title'),
          const SizedBox(height: 15),
          Customtextfiled(hint: 'Contant', masline: 5),
        ],
      ),
    );
  }
}
