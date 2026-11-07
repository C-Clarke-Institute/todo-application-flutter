
import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/custom_fab.dart';

import '../models/todo_model.dart';
import '../widgets/todo_category_widget.dart';
import '../widgets/todo_header_widget.dart';
import '../widgets/todo_progress_bar_widget.dart';
import '../widgets/todo_search_bar_widget.dart';
import '../widgets/todos_widget.dart';

class MainScreen extends StatefulWidget {

  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  bool expanded = false;
  String filterValue = 'all';
  List<TodoModel> todos = [
    TodoModel(id: 1, title: 'Design Landing Page', description: 'Create a modern and clean design for the new project', completed: true),
    TodoModel(id: 2, title: 'Team meeting at 11:00', description: 'Discuss project updates with the team', completed: true, priority: 'Low')

  ];

  List<TodoModel> getTodos() {
    switch ( filterValue ) {
      case 'completed' :
        return todos.where( ( todo ) => todo.completed == true).toList();
      case 'pending' :
        return todos.where( ( todo ) => todo.completed == false ).toList();
      default:
        return todos;
    }
  }

  void toggleFAB() {
    setState(() {
      expanded = !expanded;
    });
  }

  void addTodo() {
    setState(() {
      todos.add( new TodoModel(id: todos.length + 1, title: 'Test', description: 'Test'));
      print( todos.map( (todo) => todo.title));
    });
  }

  void toggleTodo( value) {
    setState(() {
      final index = todos.indexWhere( ( todo ) => todo.id == value);

      if ( index == -1) return;

      final oldTodo = todos[index];
      oldTodo.completed = !oldTodo.completed;
      todos[index] = oldTodo;
    });
    print( todos.map( (todo) => todo.completed));
  }

  void deleteTodo( value ) {
    setState(() {
      todos.removeWhere( ( todo ) => todo.id == value );
    });
  }

  void filterTodos( value ) {
    this.setState(() {
      this.filterValue = value;
    });


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

              SizedBox( height: 15,),
              // Search Bar
              TodoSearchBarWidget(),
              SizedBox( height: 15,),
              // Progress Bar
              TodoProgressBarWidget(),
              SizedBox( height: 15,),

              // Sample Image
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 100,
                  height: 200,
                  color: Colors.red,
                  child: Image.asset(
                    'assets/images/background.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.white,
                  child: Image.network(
                    'https://img.magnific.com/flat-lay-notebook-with-lis12t-desk_23-2148938726.jpg?semt=ais_hybrid&w=740&q=80',
                    fit: BoxFit.fill,

                    loadingBuilder: ( context , child , progress ) {
                      if( progress == null ) {
                        return child;
                      }

                      return SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                    
                    errorBuilder: ( context , error , stackTrace ) {
                      return SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: Center(
                          child: Icon( Icons.broken_image ),
                        ),
                      );
                    }
                  ),
                ),
              ),
              SizedBox( height: 15,),

              // Category
              TodoCategoryWidget( onFilter: ( value ) {
                filterTodos( value );
              },),
              SizedBox( height: 15,),
              Row(
                children: [
                  Text('Today\'s Tasks', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                  ),),
                  Spacer(),
                  Text('${getTodos().length} Tasks')
                ],
              ),
              SizedBox( height: 15,),
              // Todo Task List
              TodosWidget( todos: getTodos(),
                onToggle: ( value ) {
                toggleTodo( value );
              },
                onDelete: ( value ) { deleteTodo( value );},
              )
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
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AnimatedSwitcher(
              duration: const Duration( milliseconds: 300 ),
              transitionBuilder: ( child , animation) {
                return SizeTransition(
                    sizeFactor: animation,
                    alignment: AlignmentGeometry.bottomRight,
                    child: FadeTransition(opacity: animation, child: child,),
                );
              },
            child: expanded ? Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomFab(
                    icon: Icons.add,
                    label: 'Add',
                    onPressed: () {
                      addTodo();
                      toggleFAB();
                    }
                ),
                CustomFab(
                    icon: Icons.search,
                    label: 'Search',
                    onPressed: () {}
                ),
                CustomFab(
                    icon: Icons.safety_check,
                    label: 'Filter',
                    onPressed: () {}
                ),
              ],
            ) : SizedBox(),
          ),
          FloatingActionButton(
            onPressed: toggleFAB,
            child: Text('+'),
          ),
        ],
      ),
    );
  }
}
