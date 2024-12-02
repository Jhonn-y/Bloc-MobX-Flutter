import 'package:flutter/material.dart';

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
            Text(
              'Counter: 10',
              style: const TextStyle(fontSize: 24),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('add',
              style: const TextStyle(fontSize: 20),),
            ),
            TextButton.icon(
              onPressed: () {},
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
