import 'package:flutter/material.dart';

import './buttons.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      margin: EdgeInsets.only(bottom: 120, left: 50, right: 50),
      // color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: IconButton(
                icon: Icon(
                  Icons.star,
                  size: 40,
                  color: Colors.yellow,
                ),
                onPressed: null),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 40,
                  color: Colors.grey[400],
                ),
                onPressed: null),
          ),
        ],
      ),
    );
  }
}
