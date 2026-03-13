import 'package:flutter/material.dart';
import 'package:note_app/widght/custom-icon-search.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Row(
        children: const [
          Text(
            'Notes',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          Spacer(flex: 1),
          customsearchicon(),
        ],
      ),
    );
  }
}
