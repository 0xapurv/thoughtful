import 'package:flutter/material.dart';
import 'thoughts.dart';
import 'author.dart';
import 'textControl.dart';

class ThoughtText extends StatelessWidget {
  final List<Map<String, Object>> thoughts;
  final int thoughtIndex;
  final Function textControl;

  ThoughtText({this.thoughtIndex, this.thoughts, this.textControl});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Thoughts(thoughts[thoughtIndex]['thought']),
        Author(thoughts[thoughtIndex]['author']),
        TextControl(textControl,thoughtIndex)
      ],
    );
  }
}
