part of 'nots_cubit_cubit.dart';

@immutable
sealed class NotsCubitState {}

final class NotsCubitInitial extends NotsCubitState {}

final class NotsCubitloding extends NotsCubitState {}

final class NotsCubitsucces extends NotsCubitState {
  final List<Notemodel> nots;

  NotsCubitsucces(this.nots);
}

final class NotsCubitfailure extends NotsCubitState {
  final String errorMassege;

  NotsCubitfailure(this.errorMassege);
}
