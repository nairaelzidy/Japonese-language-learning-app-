import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_start_review2/All_section/section%2012/screen/home_pages.dart';


import 'All_section/section 13/screens/chat_page.dart';
import 'All_section/section 13/screens/login_page.dart';
import 'All_section/section 13/screens/register_page.dart';
import 'All_section/section 14/screen/UpdateProductPage.dart';
import 'All_section/section 14/screen/home_page.dart';
import 'firebase_options.dart';

void main()  {

  runApp(StorApp());
}

class StorApp extends StatelessWidget {
  const StorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      routes: {
        HomePageStorApp.id : (context)=> HomePageStorApp(),
        UpdateProductPage.id :(context)=> UpdateProductPage(),


      },
      initialRoute:HomePageStorApp.id ,
    );
  }
}
// examing puch change to git hub