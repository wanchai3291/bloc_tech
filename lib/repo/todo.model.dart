class Todo {
  int? id;
  int? userId;
  String? title;
  bool? completed;

  Todo({this.id, this.userId, this.completed, this.title});

  Todo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    title = json['title'];
    completed = json['completed'];
  }
}
