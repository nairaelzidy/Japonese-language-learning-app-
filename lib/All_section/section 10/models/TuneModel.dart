

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel{
  final Color color;
   final String sound;
  const TuneModel({required this.color,required this.sound});

  playSound2(){
     final player= AudioPlayer();
     player.play(AssetSource(sound));
  }

}