import 'package:bloc_example/bloc/sample_bloc.dart';
import 'package:bloc_example/repo/todo.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SampleBloc, SampleState>(
      builder: (context, state) {
        print(state);
        if (state is SampleInitial || state is SampleLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is SampleLoaded) {
          List<Todo> todos = state.data;
          return Scaffold(
            body: Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: todos.length,
                        itemBuilder: (context, index) {
                          return Text(todos[index].title.toString());
                        }))
              ],
            ),
          );
        } else {
          return Scaffold(
            body: Container(
              child: Text("errr"),
            ),
          );
        }
      },
    );
  }
}
