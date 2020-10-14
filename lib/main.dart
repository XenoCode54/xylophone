import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              selection(color: Colors.yellow, playNo: 1),
              selection(color: Colors.red, playNo: 2),
              selection(color: Colors.blue, playNo: 3),
              selection(color: Colors.white, playNo: 4),
              selection(color: Colors.pink, playNo: 5),
              selection(color: Colors.green, playNo: 6),
              selection(color: Colors.indigo, playNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}

void playSound(int noteNumber) {
  final player = AudioCache();
  player.play('note$noteNumber.wav');
}

Expanded selection({Color color, int playNo}) {
  return Expanded(
    child: Container(
      color: color,
      child: FlatButton(
        onPressed: () {
          playSound(playNo);
        },
        child: null,
      ),
    ),
  );
}
