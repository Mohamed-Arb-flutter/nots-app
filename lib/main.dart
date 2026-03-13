import 'package:flutter/material.dart';
import 'package:note_app/viwes/home-page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:const Homepage(),);
  }
}
