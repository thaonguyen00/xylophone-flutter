import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(1, Colors.red.shade50),
                buildKey(2, Colors.green.shade50),
                buildKey(3, Colors.blue.shade50),
                buildKey(4, Colors.red.shade50),
                buildKey(5, Colors.pink.shade50),
                buildKey(6, Colors.deepPurple.shade50),
                buildKey(7, Colors.yellow.shade50)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Widget buildKey(int note, Color color) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(note);
          },
          child: Text(
            '$note',
            style: TextStyle(),
          ),
        ),
      );
}
