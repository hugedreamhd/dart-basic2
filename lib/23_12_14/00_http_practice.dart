//
// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
//
//
// void main(){
//
//
// }
//
//
// Future<http.Response> getTodo(int id) async{
//   //요청
//   final response = http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
//   // jsonString
//
//   final jsonString = response.body;
//   //to Map
//
//   final json = jsonDecode(jsonString);
//
//   return response;
//
//
// }