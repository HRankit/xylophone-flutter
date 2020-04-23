import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playSound(1),
              playSound(2),
              playSound(3),
              playSound(4),
              playSound(5),
              playSound(6),
              playSound(7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded playSound(int i) => Expanded(
        child: RaisedButton(
          onPressed: () => player.play('note$i.wav'),
          color: getColor(i),
        ),
      );
}

getColor(int i) {
  switch (i) {
    case 1:
      return Colors.red;
      break;
    case 2:
      return Colors.orange;
      break;
    case 3:
      return Colors.yellow;
      break;
    case 4:
      return Colors.green;
      break;
    case 5:
      return Colors.teal;
      break;
    case 6:
      return Colors.blue;
      break;
    case 7:
      return Colors.purple;
      break;
  }
}
