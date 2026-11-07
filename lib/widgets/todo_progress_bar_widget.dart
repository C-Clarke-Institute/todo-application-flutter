
import 'package:flutter/material.dart';

class TodoProgressBarWidget extends StatelessWidget {
  const TodoProgressBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25))
      ),
    );
  }
}
