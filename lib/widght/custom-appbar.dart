import 'package:flutter/material.dart';
import 'package:note_app/widght/custom-icon-search.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({
    super.key,
    required this.titletex,
    required this.icon,
    this.onPressed,
  });
  final String titletex;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titletex,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        const Spacer(flex: 1),
        customsearchicon(icon: icon, onPressed: onPressed),
      ],
    );
  }
}
