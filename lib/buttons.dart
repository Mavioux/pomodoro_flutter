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
      margin: const EdgeInsets.only(left: 40, right: 40),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              width: 200,
              height: 100,
              // color: Colors.black,
              child: IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    size: 50,
                    color: Colors.blue[900],
                  ),
                  onPressed: play),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              width: 200,
              height: 100,
              // color: Colors.black,
              child: IconButton(
                  icon: Icon(
                    Icons.pause,
                    size: 50,
                    color: Colors.grey[500],
                  ),
                  onPressed: pause),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              width: 200,
              height: 100,
              // color: Colors.black,
              child: IconButton(
                  focusColor: Colors.white,
                  icon: Icon(
                    Icons.stop,
                    size: 50,
                    // color: Colors.red,
                  ),
                  onPressed: stop),
            ),
          ),
        ],
        // mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
