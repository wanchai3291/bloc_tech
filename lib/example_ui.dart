import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> todos = [];

  final control = TextEditingController();

  @override
  void initState() {
    todos.add("1");
    todos.add("2");
    todos.add("3");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: ListView(
          children: todos
              .map((e) => ListTile(
                    title: Text(e),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          todos.remove(e);
                        });
                      },
                    ),
                  ))
              .toList(),
        )),
        Container(
          color: Colors.amber,
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                controller: control,
              )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      todos.add(control.text);
                      control.clear();
                    });
                  },
                  child: Icon(Icons.add_box))
            ],
          ),
        )
      ],
    ));
  }
}
