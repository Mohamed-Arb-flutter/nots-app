import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/viwes/home-page.dart';
import 'package:note_app/widght/constans.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knotesbox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const Homepage(),
    );
  }
}
