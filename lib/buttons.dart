import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      color: Colors.green,
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            size: 50,
          ),
          Icon(
            Icons.pause,
            size: 50,
          ),
          Icon(
            Icons.stop,
            size: 50,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}
