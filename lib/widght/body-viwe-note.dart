import 'package:flutter/material.dart';
import 'package:note_app/widght/custom-appbar.dart';

class Bodyviwenote extends StatelessWidget {
  const Bodyviwenote({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Customappbar(titletex: 'Edit Note')]);
  }
}
