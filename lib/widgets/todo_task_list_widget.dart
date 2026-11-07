
import 'package:flutter/material.dart';
import 'package:flutter_project/models/todo_model.dart';
import 'package:flutter_project/widgets/todo_filter_widget.dart';
import 'package:flutter_project/widgets/todo_task_widget.dart';

class TodoTaskListWidget extends StatelessWidget {
  List<TodoModel> todos;
  TodoTaskListWidget({
    required this.todos,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        // ...todos.map( ( element) => TodoTask( todo: element,))
        // ListView.builder(
        //   shrinkWrap: true,
        //     physics: NeverScrollableScrollPhysics(),
        //     itemCount: 6,
        //
        //     itemBuilder: ( context , index) {
        //       return index % 3 == 1 ?
        //       Container(
        //           margin: EdgeInsets.only( bottom:  10),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //             children: [
        //               Container(
        //                 height: 100,
        //                 width: 250,
        //                 color: Colors.red,
        //               ),
        //             ],
        //           )
        //       )
        //
        //           : Container(
        //         margin: EdgeInsets.only( bottom:  10),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           children: [
        //             Container(
        //               height: 100,
        //               width: 100,
        //               color: Colors.red,
        //             ),
        //             Container(
        //               height: 100,
        //               width: 100,
        //               color: Colors.blue,
        //             ),
        //           ],
        //         ),
        //       );
        //     }),
        // SizedBox( height:  100,),
        // GridView(
        //   shrinkWrap: true,
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //       mainAxisSpacing: 20,
        //       crossAxisSpacing: 20,
        //       childAspectRatio: 1.5,
        //       mainAxisExtent: 150
        //   ),
        //   children: [
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.yellow,
        //     )
        //   ],
        // ),
        // SizedBox( height:  100,),
        // GridView.builder(
        //     shrinkWrap: true,
        //     itemCount: 5,
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 3
        //     ),
        //     itemBuilder: ( context , index ) {
        //       return index % 3 == 0 ? Container(
        //         color: Colors.red, margin: EdgeInsets.all(10),) :
        //       index % 3 == 1 ?  Container( color: Colors.yellow, margin: EdgeInsets.all(10),) : Container( color: Colors.green, margin: EdgeInsets.all(10),) ;
        //     }
        // )

        // ListView.builder(
        //     shrinkWrap: true,
        //     physics: NeverScrollableScrollPhysics(),
        //      itemCount: todos.length,
        //      itemBuilder: ( context , index) {
        //        return TodoTask( todo: todos[index],);
        //      }
        //  ),
      ],
    );
  }
}
