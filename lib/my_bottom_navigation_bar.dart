import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Icon(Icons.settings),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
