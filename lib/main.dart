import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final player = AudioCache();
  void musicplay(int a){
    player.play('note$a.wav');
  }
  Expanded buildKey({Color color,int note}){

    return Expanded(
      child: TextButton(
        onPressed: () {
          musicplay(note);
        },
        style: TextButton.styleFrom(backgroundColor: color),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.black,
        body: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max ,
            children: <Widget>[
              buildKey(color: Colors.red,note:1),
              buildKey(color: Colors.orange,note:2),
              buildKey(color:Colors.yellow,note:3),
              buildKey(color:Colors.green,note:4),
              buildKey(color:Colors.blue,note:5),
              buildKey(color:Colors.indigo,note:6),
              buildKey(color:Colors.purple,note:7),

            ],
          ),
        ),
      ),
    );
  }
}
