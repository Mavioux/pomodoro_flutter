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
      padding: const EdgeInsets.all(50),
      color: Colors.blue,
      child: Center(
        child: Column(
          children: [
            Clock(),
          ],
        ),
      ),
    );
  }
}
