import 'package:flutter/material.dart';
import 'package:note_app/widght/custom-appbar.dart';
import 'package:note_app/widght/custom-listviwe.dart';

class Custombody extends StatelessWidget {
  const Custombody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child:  Column(
        children: [
          SizedBox(height: 40),
          Customappbar(titletex: 'Notes', icon: Icons.search),
          // SizedBox(height: 10),
          Expanded(child: const customListviwe()),
        ],
      ),
    );
  }
}
