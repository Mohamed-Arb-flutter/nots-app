import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note-model.dart';
import 'package:note_app/widght/custom-bottom.dart';
import 'package:note_app/widght/custom-text-filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Customtextfiled(
            hint: 'Title',
            onsaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 20),
          Customtextfiled(
            hint: 'contant',
            masline: 5,
            onsaved: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(height: 100),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: custombottom(
                  islooding: state is AddNoteLoding ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var noteitem = Notemodel(
                        title: title!,
                        subtitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value,
                      );
                      BlocProvider.of<AddNoteCubit>(context).AddNote(noteitem);
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
