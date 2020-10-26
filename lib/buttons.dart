import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function play;
  final Function pause;
  final Function stop;

  Buttons(this.play, this.pause, this.stop);

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.green,
        margin: const EdgeInsets.all(30),
        child: Center(
          child: Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    size: 50,
                    color: Colors.blue[900],
                  ),
                  onPressed: play),
              IconButton(
                  icon: Icon(
                    Icons.pause,
                    size: 50,
                    color: Colors.grey[500],
                  ),
                  onPressed: pause),
              IconButton(
                  icon: Icon(
                    Icons.stop,
                    size: 50,
                    color: Colors.red,
                  ),
                  onPressed: stop),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ));
  }
}
