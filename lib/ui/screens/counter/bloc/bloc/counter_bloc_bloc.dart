import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBlocBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBlocBloc() : super(CounterBlocInitial()) {
    on<CounterBlocPlus>((event, emit) {
      if (state is CounterBlocInitial || state is CounterBlocChangeValue) {
        final currentCounter = (state as dynamic).counter;
        emit(CounterBlocChangeValue(counter: currentCounter + 1));
      }
    });

    on<CounterBlocMunis>((event, emit) {
      if (state is CounterBlocInitial || state is CounterBlocChangeValue) {
        final currentCounter = (state as dynamic).counter;
        emit(CounterBlocChangeValue(counter: currentCounter - 1));
      } 
    });
  }
}
