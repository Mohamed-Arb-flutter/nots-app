import 'package:flutter/material.dart';
import 'package:note_app/viwes/note-viwe.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Noteviwe();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'mohamed ibrahim',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'bulder by mohamed ibrahim',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withAlpha(100),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 32),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                '3May2026',
                style: TextStyle(color: Colors.black.withAlpha(100)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
