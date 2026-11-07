
import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/todo_task_widget.dart';

import '../models/todo_model.dart';

class TodosWidget extends StatelessWidget {
  List<TodoModel> todos;
  ValueChanged<int> onToggle;
  ValueChanged<int> onDelete;
  TodosWidget({
    required this.todos,
    required this.onToggle,
    required this.onDelete,
    super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: todos.length,
        itemBuilder: ( context, index) {
          return TodoTask(
            todo: todos[index],
            onToggle: ( value ) { onToggle(value);} ,
            onDelete: ( value ) { onDelete(value);},
            complete: () {
              print('Complete');
            },
          );
        });
  }
}
