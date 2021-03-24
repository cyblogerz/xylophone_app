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
              Expanded( 
                child: TextButton(
                  onPressed: () {
                    musicplay(1);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    musicplay(2);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.orange),

                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () { 
                    musicplay(3);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                ),
              ),
              Expanded(
                child: TextButton(  
                  onPressed: () {
                    musicplay(4);
                  },
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                ),
              ),
              Expanded( 
                child: TextButton(
                  onPressed: () {
                    musicplay(5);
                  },
                  style:TextButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    musicplay(6);
                  },
                  style:TextButton.styleFrom(backgroundColor: Colors.indigo),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    musicplay(7);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.purple),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
