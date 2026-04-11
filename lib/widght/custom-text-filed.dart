import 'package:flutter/material.dart';
import 'package:note_app/widght/constans.dart';

class Customtextfiled extends StatelessWidget {
  Customtextfiled({
    super.key,
    required this.hint,
    this.masline,
    this.onsaved,
    this.onChanged,
  });
  final String hint;
  final void Function(String)? onChanged;
  int? masline;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "filed is reaquired";
        } else {
          return null;
        }
      },
      maxLines: masline,
      decoration: InputDecoration(
        hint: Text(hint),
        hintStyle: const TextStyle(color: kprimrycolor),
        //hintMaxLines: masline,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: kprimrycolor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
