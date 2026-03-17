import 'package:flutter/material.dart';

class customsearchicon extends StatelessWidget {
  const customsearchicon({super.key, required this.icon,});
   final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(10),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child:Icon(icon,size: 28)),
    );
  }
}