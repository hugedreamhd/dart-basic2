import 'dart:convert';
import 'package:untitled/23_12_14/todo.dart';
import 'package:http/http.dart' as http;

Future<Todo> getTodo2(int id) async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  print(response.headers);
  return Todo.fromJson(jsonDecode(response.body));
}

void main(){
  getTodo2(1);
}