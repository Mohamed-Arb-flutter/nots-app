import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/cubits/Add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note-model.dart';
import 'package:note_app/viwes/home-page.dart';
import 'package:note_app/widght/constans.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knotesbox);
  Hive.registerAdapter(NotemodelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const Homepage(),
      ),
    );
  }
}
