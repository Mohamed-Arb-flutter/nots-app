import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note-model.dart';
import 'package:note_app/widght/constans.dart';

part 'nots_cubit_state.dart';

class NotsCubitCubit extends Cubit<NotsCubitState> {
  NotsCubitCubit() : super(NotsCubitInitial());
  List<Notemodel>? nots;
  fetchAllNotes() async {
    var notsbox = Hive.box<Notemodel>(knotesbox);

    nots = notsbox.values.toList();
    emit(NotsCubitSuccess());
  }
}
