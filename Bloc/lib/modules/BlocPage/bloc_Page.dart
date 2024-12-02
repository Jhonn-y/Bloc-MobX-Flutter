import 'package:bloc_mob_x/modules/BlocPage/bloc/counterBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Bloc Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc,CounterState>(
              builder: (context, state) {
                return Text(
                'Counter: ${state.counter}',
                style: const TextStyle(fontSize: 24),
              ); 
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
              onPressed: () {
              context.read<CounterBloc>().add(IncrementCounter());
              },
              icon: const Icon(Icons.add),
              label: const Text('add',
              style: const TextStyle(fontSize: 20),),
            ),
            TextButton.icon(
              onPressed: () {
                context.read<CounterBloc>().add(DecrementCounter());
              },
              icon: const Icon(Icons.remove),
              label: const Text('less',
              style: const TextStyle(fontSize: 20),),
            )
              ],
            )
          ],
        ),
      ),
    );
  }
}
