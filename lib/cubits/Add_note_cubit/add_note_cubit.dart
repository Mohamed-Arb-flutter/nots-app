import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note-model.dart';
import 'package:note_app/widght/constans.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  AddNote(Notemodel note) async {
    emit(AddNoteLoding());
    try {
      var notsbox = Hive.box<Notemodel>(knotesbox);

      await notsbox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNotefailuer(e.toString()));
    }
  }
}
