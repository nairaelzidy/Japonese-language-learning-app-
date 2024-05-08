import 'package:flutter/cupertino.dart';
import 'package:new_start_review2/All_section/section%2010/models/TuneModel.dart';

class TuneItems extends StatelessWidget {

  const TuneItems({super.key, required this.tune});
  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: tune.playSound2(),
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
