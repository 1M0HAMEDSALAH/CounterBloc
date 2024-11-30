import 'package:counterbloc/ui/screens/counter/bloc/bloc/counter_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Counter Test Bloc"),
      ),
      body: BlocBuilder<CounterBlocBloc, CounterBlocState>(
        builder: (BuildContext context, state) {
          final counter =
              (state is CounterBlocChangeValue || state is CounterBlocInitial)
                  ? (state as dynamic).counter
                  : 0;
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () =>
                      context.read<CounterBlocBloc>().add(CounterBlocPlus()),
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () =>
                      context.read<CounterBlocBloc>().add(CounterBlocMunis()),
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
