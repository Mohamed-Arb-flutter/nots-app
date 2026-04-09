import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/models/note-model.dart';
import 'package:note_app/simble_block_observe.dart';
import 'package:note_app/viwes/home-page.dart';
import 'package:note_app/widght/constans.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimbleBlockObserve();
  Hive.registerAdapter(NotemodelAdapter());
  await Hive.openBox<Notemodel>(knotesbox);

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
