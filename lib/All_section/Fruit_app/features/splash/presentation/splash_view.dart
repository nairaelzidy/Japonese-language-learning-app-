import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_start_review2/All_section/Fruit_app/features/splash/presentation/widgets/splash_body.dart';

import '../../../core/constants.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kMainColor,
      body: SplashViewBody(),
    );
  }
}
