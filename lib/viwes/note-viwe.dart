import 'package:flutter/material.dart';
import 'package:note_app/models/note-model.dart';
import 'package:note_app/widght/body-viwe-note.dart';

class Noteviwe extends StatelessWidget {
  const Noteviwe({super.key, required this.note});
  final Notemodel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Bodyviwenote(nots: note));
  }
}
