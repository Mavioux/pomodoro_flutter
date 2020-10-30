import 'package:flutter/material.dart';

import './clock.dart';

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
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Clock(
            minutes: 15,
            seconds: 0,
          ),
        ],
      ),
    );
  }
}
