import 'dart:convert';

import 'package:bloc_example/repo/todo.model.dart';
import 'package:http/http.dart';

class TodoRepository {
  String userUrl = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<Todo>> getPosts() async {
    Response response = await get(Uri.parse(userUrl));
    print(response);

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => Todo.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
