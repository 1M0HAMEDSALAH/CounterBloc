// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc_bloc.dart';

@immutable
abstract class CounterBlocState {
  int counter = 0;
  CounterBlocState({required this.counter});
}

class CounterBlocInitial extends CounterBlocState {
  CounterBlocInitial() : super(counter: 0);
}

class CounterPlusState extends CounterBlocState {
  CounterPlusState(int plus) : super(counter: plus);
}

class CounterMunisState extends CounterBlocState {
  CounterMunisState(munis) :super(counter: munis);
}
