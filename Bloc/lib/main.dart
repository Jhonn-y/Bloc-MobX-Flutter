import 'package:bloc_mob_x/modules/BlocPage/bloc/counterBloc.dart';
import 'package:bloc_mob_x/modules/BlocPage/bloc_Page.dart';
import 'package:bloc_mob_x/modules/CubitPage/cubit_page.dart';
import 'package:bloc_mob_x/modules/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/counter': (_) => BlocProvider(
          create: (_) => CounterBloc(),
              child: BlocPage(),
            ),
        '/cubit': (_) => CubitPage()
      },
      home: Home(),
    );
  }
}
