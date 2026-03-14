import 'package:flutter/material.dart';
import 'package:note_app/widght/Note-item.dart';

class customListviwe extends StatelessWidget {
  const customListviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 8),
          child:  NoteItem(),
        );
      },
    );
  }
}