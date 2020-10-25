import 'package:flutter/material.dart';

import './main_body.dart';
import 'my_bottom_navigation_bar.dart';

class Pomodoro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.star),
        title: Text('Pomodoro App'),
      ),
      body: MainBody(),
    );
  }
}
