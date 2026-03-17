import 'package:flutter/material.dart';
import 'package:note_app/widght/custom-icon-search.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.titletex, required this.icon});
  final String titletex;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titletex,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        Spacer(flex: 1),
        customsearchicon(icon: icon),
      ],
    );
  }
}
