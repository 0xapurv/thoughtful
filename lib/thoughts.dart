import 'package:flutter/material.dart';

class Thoughts extends StatelessWidget {
  final String thoughttext;

  Thoughts(this.thoughttext);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          thoughttext,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        )

    );
  }
}
