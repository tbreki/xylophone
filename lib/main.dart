import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() => runApp(xylophoneApp());

class xylophoneApp extends StatelessWidget {
  get color => null;

  get soundNumber => null;

  clicker(MaterialColor color, int soundNumber) {
    return Expanded(
      child: TextButton(
        onPressed: () async {
          PlaySound();
        },
        style: TextButton.styleFrom(backgroundColor: color),
        child: Text("click me"),
      ),
    );
  }

  Future<void> PlaySound() async {
    final player = AudioPlayer();
    await player.play(DeviceFileSource("assets/note$soundNumber.wav"));
  }

  const xylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            clicker(Colors.grey, 1),
            clicker(Colors.green, 2),
            clicker(Colors.yellow, 3),
            clicker(Colors.pink, 4),
            clicker(Colors.orange, 5),
            clicker(Colors.red, 6),
            clicker(Colors.blue, 7),
          ],
        ),
      ),
    ));
  }
}
