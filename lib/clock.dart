import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pomodoro/buttons.dart';

enum Status { play, pause, stop }

class Clock extends StatefulWidget {
  const Clock({
    Key key,
  });

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  int _initialTime;
  int _now;
  int _then;
  int _minutes;
  int _seconds;
  Timer _everySecond;
  String _previousState;
  var status = Status.stop;

  void _play() {
    setState(() {
      status = Status.play;
    });
  }

  void _pause() {
    setState(() {
      status = Status.pause;
    });
  }

  void _stop() {
    setState(() {
      status = Status.stop;
    });
  }

  @override
  void initState() {
    super.initState();

    // sets first value
    _minutes = 15;
    _seconds = 0;
    _now = DateTime.now().millisecondsSinceEpoch;
    _initialTime = _now;
    _then = DateTime.now()
        .add(new Duration(minutes: _minutes, seconds: _seconds))
        .millisecondsSinceEpoch;

    // defines a timer
    _everySecond = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        switch (status.toString()) {
          case 'Status.play':
            print('Play');
            _now = DateTime.now().millisecondsSinceEpoch;
            if (_previousState != 'Status.play') {
              _then = DateTime.now()
                  .add(new Duration(minutes: _minutes, seconds: _seconds))
                  .millisecondsSinceEpoch;
            }
            _previousState = 'Status.play';
            break;

          case 'Status.pause':
            print('Pause');
            _minutes = _then - _now ~/ 60000;
            _seconds = _then - _now ~/ 1000 % 60;
            _previousState = 'Status.pause';
            break;
          case 'Status.stop':
            print('Stop');
            _minutes = _minutes;
            _seconds = _seconds;
            break;
          default:
            print('Something bad happened!');
            break;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var percentage = ((_then - _now) ~/ (_then - _initialTime)) * 100;

    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        children: [
          Center(
            child: Text(
              "${(_then - _now) ~/ 60000}" +
                  " : " +
                  "${((_then - _now) ~/ 1000) % 60}" +
                  "\n ${percentage} %" +
                  "\n" +
                  status.toString(),
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          Buttons(_play, _pause, _stop),
        ],
      ),
    );
  }
}
