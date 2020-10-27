import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pomodoro/buttons.dart';

enum Status { play, pause, stop }

class Clock extends StatefulWidget {
  final minutes;
  final seconds;
  const Clock({
    Key key,
    this.minutes = 15,
    this.seconds = 0,
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
    _minutes = widget.minutes;
    _seconds = widget.seconds;
    _now = DateTime.now().millisecondsSinceEpoch;
    _initialTime = _now;
    _then = DateTime.now()
        .add(new Duration(minutes: _minutes, seconds: _seconds))
        .millisecondsSinceEpoch;

    print('Got initialized!');

    // defines a timer
    _everySecond = Timer.periodic(Duration(milliseconds: 500), (Timer t) {
      setState(() {
        switch (status.toString()) {
          case 'Status.play':
            print('Play');
            _now = DateTime.now().millisecondsSinceEpoch;
            if (_previousState == 'Status.pause') {
              print('pros8etw ston mellontiko xrono: minutes: ' +
                  (_minutes.toString() + " seconds: " + (_seconds).toString()));
              _initialTime = _now;
              _then = DateTime.now()
                  .add(new Duration(minutes: _minutes, seconds: _seconds))
                  .millisecondsSinceEpoch;
            } else if (_previousState == 'Status.stop') {
              _then = DateTime.now()
                  .add(new Duration(minutes: 15, seconds: 0))
                  .millisecondsSinceEpoch;
            }
            _previousState = 'Status.play';
            print(_now.toString() + " " + _then.toString());
            print(_minutes.toString() + " " + _seconds.toString());
            break;

          case 'Status.pause':
            print('Pause');
            _minutes = (_then - _now) ~/ 60000;
            _seconds = ((_then - _now) ~/ 1000) % 60;
            _previousState = 'Status.pause';
            print(_now.toString() + " " + _then.toString());
            print(_minutes.toString() + " " + _seconds.toString());
            break;
          case 'Status.stop':
            print('Stop');
            _minutes = widget.minutes;
            _seconds = widget.seconds;
            _now = DateTime.now().millisecondsSinceEpoch;
            _previousState = 'Status.pause';
            _then = DateTime.now()
                .add(new Duration(minutes: _minutes, seconds: _seconds))
                .millisecondsSinceEpoch;
            print(_now.toString() + " " + _then.toString());
            print(_minutes.toString() + " " + _seconds.toString());
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
    var x = new Duration(minutes: widget.minutes, seconds: widget.seconds)
        .inMilliseconds;
    var percentage = ((_then - _now) / x * 100).toInt();

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
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Buttons(_play, _pause, _stop),
          )
        ],
      ),
    );
  }
}
