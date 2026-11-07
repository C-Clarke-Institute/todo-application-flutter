
import 'package:flutter/material.dart';
import 'package:flutter_project/models/todo_model.dart';

class TodoTask extends StatelessWidget {
  TodoModel todo;
  ValueChanged<int> onToggle;
  ValueChanged<int> onDelete;
  VoidCallback? complete;

  TodoTask({
    required this.todo,
    required this.onToggle,
    required this.onDelete,
    this.complete,
    super.key,
  });

  void onCompleteFnc( value) {
    this.onToggle(  this.todo.id );
    this.complete?.call();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only( bottom: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(0, 2.5)
            ),
            BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(2.5, 0)
            )
          ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform.scale(
            scale: 1.5,
            child: Checkbox(
                shape: CircleBorder(),
                value: todo.completed,
                side: BorderSide(
                  width: 1
                ),
                onChanged: ( value ) {
                  onCompleteFnc(value);
                }
            ),
          ),
          // Container(
          //   width: 40,
          //   height: 40,
          //   decoration: BoxDecoration(
          //       color: Colors.blue,
          //       borderRadius: BorderRadius.circular(20)
          //
          //   ),
          //   child: ,
          // ),
          SizedBox( width: 10,),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(todo.title, style: TextStyle( fontWeight:  FontWeight.bold),),
                  Text(todo.description , maxLines: 2, overflow: TextOverflow.ellipsis,)
                ],
              )),
          todo.priority == 'High' ? Container(
            width: 80,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: todo.priority == 'High' ? Colors.red.shade50 : Colors.green.shade50,
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Center(
                  child: Text(todo.priority, style: TextStyle( color: todo.priority == 'High' ? Colors.red : Colors.green),)),
            ),
          ) : Container(),
          Column(
            children: [
              Container(
                width: 40,
                child: ImageIcon(
                    AssetImage('assets/icons/todo.png'),
                    size: 28,
                    color: Colors.blue,
                ),
              ),
              IconButton(
                  onPressed: todo.completed ? null :  () {
                    onDelete( todo.id );
                  },
                  icon: ImageIcon(
                    AssetImage('assets/icons/delete.png'),
                    size: 28,
                    color: todo.completed ? Colors.grey : Colors.black,
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}