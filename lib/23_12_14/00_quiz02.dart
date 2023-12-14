import 'dart:convert';
import 'package:untitled/23_12_14/todo.dart';
import 'package:http/http.dart' as http;

Future<Todo> getTodo2(int id) async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  print(response.body);
  return Todo.fromJson(jsonDecode(response.body));
}

// 여러개 리스트 받을 때 패턴
Future<List<Todo>> getTodos2() async {
// 요청
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  print(response.body);
  final jsonList = jsonDecode(response.body) as List<dynamic>;
  return jsonList.map((e) => Todo.fromJson(e)).toList();
}

void main() async {
  final Todo todo = await getTodo2(1);
  print(todo.title);
  final List<Todo> todo2 = await getTodos2();
  for (var e in todo2) {
    print(e.id);
    print(e.title);
  }
  //print(todo2.length);
}
