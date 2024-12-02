import 'package:bloc_mob_x/modules/CubitPage/cubit/counterCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitPage extends StatelessWidget {
  const CubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Cubit Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
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
                    context.read<CounterCubit>().increment();
                  },
                  icon: const Icon(Icons.add),
                  label: const Text(
                    'add',
                    style:  TextStyle(fontSize: 20),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text(
                    'less',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
