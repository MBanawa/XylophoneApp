import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

Expanded buildKey ({Color color, int soundNumber}) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        playSound(soundNumber);
      }, 
      color: color,
      ),
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
              buildKey(color: Colors.red, soundNumber:1),
              buildKey(color: Colors.green, soundNumber:2),
              buildKey(color: Colors.yellow, soundNumber:3),
              buildKey(color: Colors.orange, soundNumber:4),
              buildKey(color: Colors.purple, soundNumber:5),
              buildKey(color: Colors.deepPurple, soundNumber:6),
              buildKey(color: Colors.blue, soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
