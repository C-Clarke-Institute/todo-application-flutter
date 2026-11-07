
import 'package:flutter/material.dart';

class CustomFab extends StatelessWidget {
  IconData icon;
  String label;
  VoidCallback onPressed;
  CustomFab({
    required this.icon,
    required this.label,
    required this.onPressed,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsetsGeometry.all(10),
       child: Row(
         mainAxisSize: MainAxisSize.min,
         children: [
           Text(label),
           SizedBox( width: 12,),
           FloatingActionButton.small(
               heroTag: label,
               onPressed: onPressed,
               child: Icon(icon),
           )
         ],
       ),
    );
  }
}
