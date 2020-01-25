import 'package:flutter/material.dart';
import 'text.dart';
import 'textControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var _thoughtIndex = 0;

  final _thoughts = const [
    {
      'thought': 'Try not to become a man of success, but rather try to become a man of value.',
      'author': 'Albert Einstein',
    },
    {
      'thought': 'May your choices reflect your Hopes, not your Fear.',
      'author': 'Nelson Mandela',
    },
    {
      'thought': 'Your time is Limited, so don\'t waste it living someone else Life.',
      'author': 'Steve Jobs',
    },
    {
      'thought': 'The more you praise and celebrate your life, The more there is in life to Celebrate',
      'author': 'Oprah WInfrey',
    },
    {
      'thought': 'Success is a lousy teacher. It seduces smart people into thinking they can\'t lose',
      'author': 'Bill Gates',
    },
    {
      'thought': 'People rarely succeed unless they have fun in what they are doing.',
      'author': 'Dale Carnegie',
    },
    {
      'thought': 'Have no fear of perfection, you\'ll never reach it',
      'author': 'Salvador Dali',
    },
    {
      'thought': 'If you live for people\'s acceptance, you will die from their rejection.',
      'author': 'Legrae',
    },
    {
      'thought': 'People often say that motivation doesn\'t last. Well neither does bathing-that\'s why we recommend it daily.',
      'author': 'Zig Zigler',
    },
    {
      'thought': 'Be so Good they can\'t ignore you.',
      'author': 'Steve Martin',

    },
  ];

  void _textControl() {
    setState(() {
      _thoughtIndex++;
    });
  }

  void _resetThought() {
    setState(() {
       _thoughtIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('ThoughtFul'),
          ),
          body: _thoughtIndex < _thoughts.length
              ? ThoughtText(thoughts: _thoughts,
              thoughtIndex: _thoughtIndex, textControl: _textControl)
              : TextControl(_resetThought,_thoughtIndex)
      ),
    );
  }
}

