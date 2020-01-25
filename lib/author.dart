import 'package:flutter/material.dart';

class Author extends StatelessWidget {
  final String authorName;
  Author(this.authorName);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(authorName,
        style: TextStyle(
          color: Colors.blue,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
