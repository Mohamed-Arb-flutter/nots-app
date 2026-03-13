import 'package:flutter/material.dart';
import 'package:note_app/widght/custom-appbar.dart';

class Custombody extends StatelessWidget {
  const Custombody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [SizedBox(height: 40), Customappbar()]);
  }
}
