import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final int thoughtIndex;
  final Function nextHandler;

  TextControl(this.nextHandler, this.thoughtIndex);

  String get textButtonPhrase {
    String phrase;
    if (thoughtIndex < 10) {
      phrase = 'Next';
    } else {
      phrase = 'Reset';
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child:
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text(
              textButtonPhrase,
              textAlign: TextAlign.center,
            ),
            onPressed: nextHandler,
          ),
        ),
      ],
    );
  }
}
