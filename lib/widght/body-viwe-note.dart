import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/nots_cubit_cubit.dart';
import 'package:note_app/models/note-model.dart';
import 'package:note_app/widght/custom-appbar.dart';
import 'package:note_app/widght/custom-text-filed.dart';

class Bodyviwenote extends StatefulWidget {
  const Bodyviwenote({super.key, required this.nots});
  final Notemodel nots;

  @override
  State<Bodyviwenote> createState() => _BodyviwenoteState();
}

class _BodyviwenoteState extends State<Bodyviwenote> {
  String? title, contant;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Customappbar(
            titletex: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.nots.title = title ?? widget.nots.title;
              widget.nots.subtitle = contant ?? widget.nots.subtitle;
              BlocProvider.of<NotsCubitCubit>(context).fetchAllNotes();
              widget.nots.save();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 20),
          Customtextfiled(
            hint: widget.nots.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 15),
          SingleChildScrollView(
            child: Customtextfiled(
              hint: widget.nots.subtitle,
              masline: 10,
              onChanged: (value) {
                contant = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
