import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/nots_cubit_cubit.dart';
import 'package:note_app/models/note-model.dart';
import 'package:note_app/viwes/note-viwe.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.nots});
  final Notemodel nots;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return  Noteviwe(note: nots,);
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(nots.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                nots.title,
                style: const TextStyle(fontSize: 26, color: Colors.black),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  nots.subtitle,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withAlpha(100),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  nots.delete();
                  BlocProvider.of<NotsCubitCubit>(context).fetchAllNotes();
                },
                icon: const Icon(Icons.delete, color: Colors.black, size: 32),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                nots.date,
                style: TextStyle(color: Colors.black.withAlpha(100)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
