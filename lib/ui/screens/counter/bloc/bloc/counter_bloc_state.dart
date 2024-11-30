// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc_bloc.dart';

@immutable
sealed class CounterBlocState {}

class CounterBlocInitial extends CounterBlocState {
  final int counter;
  CounterBlocInitial({this.counter = 0});
}

class CounterBlocChangeValue extends CounterBlocState {
  final int counter;
  CounterBlocChangeValue({
    required this.counter,
  });
}
