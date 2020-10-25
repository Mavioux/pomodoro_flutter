import 'package:flutter/material.dart';

import './buttons.dart';
import './clock.dart';

class MainBody extends StatelessWidget {
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
            Buttons(),
          ],
        ),
      ),
    );
  }
}
