
import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/todo_filter_widget.dart';

class TodoCategoryWidget extends StatelessWidget {
  ValueChanged<String> onFilter;
   TodoCategoryWidget({ required this.onFilter,  super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
         scrollDirection: Axis.horizontal,
         children: [
           TodoFilterWidget(  title: 'All', onTap: () {
             onFilter('all');
           },),
           TodoFilterWidget(  title: 'Pending', icon: Icons.timer, onTap: () {
             onFilter('pending');
           }, ),
           TodoFilterWidget( title: 'Completed', onTap: () {
             onFilter('completed');
           },),
           TodoFilterWidget( title: 'Work', onTap: () {
             onFilter('work');
           },),
         ],
      ),
    );
  }
}
