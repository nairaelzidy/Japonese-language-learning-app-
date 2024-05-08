import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_start_review2/All_section/section%2010/components/tune_items.dart';

import '../models/TuneModel.dart';

class TuneScreen extends StatelessWidget {
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffF44336), sound: 'music/note1.wav'),
    TuneModel(color: Color(0xffF89800), sound: 'music/note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'music/note3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'music/note4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'music/note5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'music/note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'music/note7.wav'),
  ];

  const TuneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.grey[600],
        title: Text(
          "Flutter Tune App",
          style: TextStyle(color: const Color(0xff253238)),
        ),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItems(tune: e),
        )
            .toList(),
      ),
    );
  }
}
