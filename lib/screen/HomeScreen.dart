import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_start_review2/component/category_items.dart';
import 'package:new_start_review2/screen/NumbersPage.dart';

import 'ColorsPage.dart';
import 'FamilyMembersPage.dart';
import 'PhrasesPage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
          backgroundColor: Color(0xff46322B),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          title: Text(
            "Toku naira",
            style: TextStyle(color: Colors.white),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 16,),
            Category(
                color: Color(0xffEF9235),
                text: "Number",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NumbersPage();
                  }));
                }),
            SizedBox(height: 16,),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyMembersPage();
                }));
              },
              text: 'FamilyMembers',
              color: const Color(0xff558B37),
            ),
            SizedBox(height: 16,),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorsPage();
                }));
              },
              text: 'Colors',
              color: const Color(0xff79359F),
            ),
            SizedBox(height: 16,),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhrasesPage();
                }));
              },
              text: 'Phrases',
              color: const Color(0xff50ADC7),
            ),
          ],
        ),
      ),
    );
  }
}
