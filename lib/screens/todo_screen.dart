
import 'package:flutter/material.dart';
import 'package:flutter_project/models/todo_model.dart';
import 'package:flutter_project/widgets/todo_category_widget.dart';
import 'package:flutter_project/widgets/todo_header_widget.dart';
import 'package:flutter_project/widgets/todo_progress_bar_widget.dart';
import 'package:flutter_project/widgets/todo_search_bar_widget.dart';
import 'package:flutter_project/widgets/todo_task_list_widget.dart';

import '../widgets/todo_task_widget.dart';
import '../widgets/todos_widget.dart';

class TodoScreen extends StatelessWidget {
  List<TodoModel> todos = [
    TodoModel(id: 1, title: 'Design Landing Page', description: 'Create a modern and clean design for the new project', completed: true),
    TodoModel(id: 2, title: 'Team meeting at 11:00', description: 'Discuss project updates with the team', completed: true, priority: 'Low')

  ];
  TodoScreen({super.key});

  void addTodo() {
    todos.add( new TodoModel(id: 3, title: 'Test', description: 'Test'));
    print( todos.map( (todo) => todo.title));
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      // backgroundColor: Color(0xFFF6F7FF),
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all( 10 ),
          child: ListView(
            children: [
              // Header
              TodoHeaderWidget(),
              SizedBox( height: 15,),
              // Search Bar
             TodoSearchBarWidget(),
              SizedBox( height: 15,),
              // Progress Bar
              TodoProgressBarWidget(),
              SizedBox( height: 15,),
              // Category
              // TodoCategoryWidget(),
              SizedBox( height: 15,),
              Row(
                children: [
                  Text('Today\'s Tasks', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                  ),),
                  Spacer(),
                  Text('${todos.length} Tasks')
                ],
              ),
              SizedBox( height: 15,),
              // Todo Task List
              //TodosWidget( todos: todos, onToggle: ( value ) {},)
            ],
          ),
          // child: ListView.builder(
          //     itemCount: todos.length,
          //     itemBuilder: ( context , index) {
          //       return TodoTask( todo: todos[index],);
          //     }
          // ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: addTodo,
      ),
    );
  }

}



