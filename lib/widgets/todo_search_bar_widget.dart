
import 'package:flutter/material.dart';

class TodoSearchBarWidget extends StatelessWidget {
  const TodoSearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25))
      ),
    );
  }
}
