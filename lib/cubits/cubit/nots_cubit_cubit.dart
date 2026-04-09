import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note-model.dart';

part 'nots_cubit_state.dart';

class NotsCubitCubit extends Cubit<NotsCubitState> {
  NotsCubitCubit() : super(NotsCubitInitial());
}
