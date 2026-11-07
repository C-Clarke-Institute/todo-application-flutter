
import 'package:flutter_project/models/todo_model.dart';

class UserModel {
  int id;
  String firstName;
  String lastName;
  int age;
  List<TodoModel> todos;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
    this.todos = const []
  });
}