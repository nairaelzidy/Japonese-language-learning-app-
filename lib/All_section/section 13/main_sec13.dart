import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_start_review2/All_section/section%2013/screens/chat_page.dart';
import 'package:new_start_review2/All_section/section%2013/screens/login_page.dart';
import 'package:new_start_review2/All_section/section%2013/screens/register_page.dart';

import '../../firebase_options.dart';


void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
        ChatPage.id : (context)=>ChatPage()

      },
      initialRoute: LoginPage.id,
    );
  }
}
// examing puch change to git hub