import 'package:flutter/material.dart';
import 'package:note_app/widght/custom-bottom.dart';
import 'package:note_app/widght/custom-text-filed.dart';

class noteiconbottmsheets extends StatelessWidget {
  const noteiconbottmsheets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

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
          custombottom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
