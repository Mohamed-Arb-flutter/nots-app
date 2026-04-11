import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/nots_cubit_cubit.dart';
import 'package:note_app/models/note-model.dart';
import 'package:note_app/widght/Note-item.dart';

class customListviwe extends StatelessWidget {
  const customListviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotsCubitCubit, NotsCubitState>(
      builder: (context, state) {
        List<Notemodel> nots = BlocProvider.of<NotsCubitCubit>(context).nots!;
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ListView.builder(
            itemCount: nots.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: NoteItem(
                  nots: nots[index], // تمرير الملاحظة المطلوبة هنا
                ),
              );
            },
          ),
        );
      },
    );
  }
}
