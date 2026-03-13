import 'package:flutter/material.dart';

class customsearchicon extends StatelessWidget {
  const customsearchicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(10),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child:const Icon(Icons.search, size: 28)),
    );
  }
}