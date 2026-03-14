import 'package:flutter/material.dart';
import 'package:note_app/widght/Note-item.dart';
import 'package:note_app/widght/custom-appbar.dart';

class Custombody extends StatelessWidget {
  const Custombody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children: [
          SizedBox(height: 40),
          Customappbar(),
          SizedBox(height: 10),
          NoteItem(),
        ],
      ),
    );
  }
}

