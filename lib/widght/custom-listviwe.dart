import 'package:flutter/material.dart';
import 'package:note_app/widght/Note-item.dart';

class customListviwe extends StatelessWidget {
  const customListviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ListView.builder(
        itemBuilder: (context, index) {
          const Padding(padding: EdgeInsets.zero);
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}
