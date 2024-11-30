part of 'counter_bloc_bloc.dart';

@immutable
sealed class CounterBlocEvent {}

final class CounterBlocPlus extends CounterBlocEvent {}

final class CounterBlocMunis extends CounterBlocEvent {}
