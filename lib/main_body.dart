import 'package:flutter/material.dart';
import 'package:pomodoro/settings.dart';

import './clock.dart';
import './settings.dart';

enum Status { play, pause, stop }

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Clock(
            minutes: 15,
            seconds: 0,
          ),
          Container(
            child: Settings(),
          ),
        ],
      ),
    );
  }
}
