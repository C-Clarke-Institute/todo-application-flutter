
import 'package:flutter/material.dart';

class TodoFilterWidget extends StatelessWidget {
  final String title;
  IconData? icon;
  VoidCallback onTap;
  TodoFilterWidget({ required this.title, required this.onTap, super.key , this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: () { print(' Double Tap');},
      onLongPress: () { print('Long Press');},
      child: Container(
        width: 100,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all( Radius.circular(20))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null ? Icon(icon) : Container(),
            Text(title),
          ],
        ),
      ),
    );
  }
}
