import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_start_review2/All_section/section%2012/cubits/getWwatherCubit/get_weather_cubit.dart';
import 'package:new_start_review2/All_section/section%2013/screens/chat_page.dart';
import 'package:new_start_review2/All_section/section%2013/screens/login_page.dart';
import 'package:provider/provider.dart';

import 'All_section/section 12/cubits/getWwatherCubit/get_Weather_States.dart';
import 'All_section/section 12/providers/weather_providers.dart';
import 'All_section/section 12/screen/home_pages.dart';
import 'All_section/section 13/screens/register_page.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.id:(context)=> LoginPage(),
        RegisterPage.id: (context)=> RegisterPage(),
        ChatPage.id : (context )=> ChatPage()

      },
      initialRoute: LoginPage.id,


    );
  }
}
