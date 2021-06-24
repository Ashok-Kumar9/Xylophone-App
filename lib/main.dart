import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Widget makeBox({required Color color, int num = 7}) {
    final player = new AudioCache();
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: () {
            player.play('note$num.wav');
          },
          child: Text('')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              makeBox(color: Colors.red, num: 2),
              makeBox(color: Colors.yellow, num: 3),
              makeBox(color: Colors.blue, num: 4),
              makeBox(color: Colors.green, num: 5),
              makeBox(color: Colors.orange, num: 6),
              makeBox(color: Colors.indigo, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
