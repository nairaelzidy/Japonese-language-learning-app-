import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusniessCardApp extends StatelessWidget {
  const BusniessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const CircleAvatar(
              radius: 128,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 125,
                backgroundImage: AssetImage("images/tharwat.png"),
              ),
            ),
            const Text(
              "Naira",
              style: TextStyle(
                  color: Colors.white, fontSize: 32, fontFamily: "Pacifico"),
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(
                  color: Color(0xFF6C8090),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const Divider(
              color: Color(0xFF6C8090),
              thickness: 2,
              endIndent: 60,
              indent: 60,
              height: 15,

            ),
            Card(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              color: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 32,
                  color: Colors.black,
                ),
                title: Text(
                  "(+20) 01028602227",
                  style: TextStyle(fontSize: 24),
                ),
                
              ),
            ),
            Card(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              color: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const ListTile(
                leading: Icon(
                  Icons.mail,
                  size: 32,
                  color: Colors.black,
                ),
                title: Text(
                  "naira@gmail.com",
                  style: TextStyle(fontSize: 24),
                ),

              ),
            ),
          ],
        ));
  }
}
