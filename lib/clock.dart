import 'package:flutter/material.dart';

class Clock extends StatelessWidget {
  final now = DateTime.now();
  final counter = DateTime.now().add(new Duration(minutes: 15, seconds: 0));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: Center(
        child: Text(
          "${counter.minute - now.minute}" +
              " : " +
              "${counter.second - now.second}",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
