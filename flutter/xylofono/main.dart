import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XyloApp());
}

class XyloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
			crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                    color: Colors.orange,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('xylo1.mp3');
                    }), // FlatButton
              ), // Expanded
              Expanded(
                child: FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('xylo2.mp3');
                    }), // FlatButton
              ), // Expanded
              Expanded(
                child: FlatButton(
                    color: Colors.purple,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('xylo3.mp3');
                    }), // FlatButton
              ), // Expanded
              Expanded(
                child: FlatButton(
                    color: Colors.pink,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('xylo4.mp3');
                    }), // FlatButton
              ), // Expanded
              Expanded(
                child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('xylo5.mp3');
                    }), // FlatButton
              ), // Expanded
              Expanded(
                child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('xylo6.mp3');
                    }), // FlatButton
              ), // Expanded
              Expanded(
                child: FlatButton(
                    color: Colors.lime,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('xylo7.mp3');
                    }), // FlatButton
              ), // Expanded
              Expanded(
                child: FlatButton(
                    color: Colors.amber,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('xylo8.mp3');
                    }), // FlatButton
              ), // Expanded
            ], // Widget[]
          ), // Column
        ), // body
      ), // Scaffold
    ); // MaterialApp
  }
}
