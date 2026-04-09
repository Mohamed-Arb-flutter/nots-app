import 'package:flutter/material.dart';
import 'package:note_app/widght/custom-body.dart';
import 'package:note_app/widght/note-icon-bottm-sheetys.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
            context: context,
            builder: (context) {
              return const noteiconbottmsheets();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const Custombody(),
    );
  }
}
