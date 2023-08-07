import 'package:bloc_example/bloc/sample_bloc.dart';
import 'package:bloc_example/example_bloc.dart';
import 'package:bloc_example/example_ui.dart';
import 'package:bloc_example/repo/todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SampleBloc>(
            create: (context) =>
                SampleBloc(TodoRepository())..add(LoadSampleEvent()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
