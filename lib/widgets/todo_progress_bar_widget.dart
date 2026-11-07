
import 'package:flutter/material.dart';

class TodoProgressBarWidget extends StatelessWidget {
  const TodoProgressBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      child: Center(
        child: Text('progress bar'),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          image: DecorationImage(
              image: AssetImage(
                'assets/images/background.png',
              ),
              fit: BoxFit.fill
          )
      ),
    );
  }
}
