part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoding extends AddNoteState {}

final class AddNoteSuccess extends AddNoteState {}

final class AddNotefailuer extends AddNoteState {
  final String errMassge;
  AddNotefailuer(this.errMassge);
}
