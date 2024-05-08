import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../component/list_items.dart';
import '../models/itemsModel.dart';

class FamilyMembersPage extends StatelessWidget {
  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      jpName: '',
      enName: 'father',
      image: 'assets/images/family_members/family_father.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      jpName: '',
      enName: 'daugher',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      jpName: '',
      enName: 'grand father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      jpName: '',
      enName: 'grand mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      jpName: '',
      enName: 'mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/older bother.wav',
      jpName: '',
      enName: 'older bother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    ItemModel(
      sound: 'assets/sounds/family_members/older sister.wav',
      jpName: '',
      enName: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      jpName: '',
      enName: 'son',
      image: 'assets/images/family_members/family_son.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger brohter.wav',
      jpName: '',
      enName: 'younger brohter',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      jpName: '',
      enName: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),
  ];
  const FamilyMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: const Text(
          "Family Number",
          style: TextStyle(color:const Color(0xff46322B)),
        ),
      ),
      body:
      ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            color:  const Color(0xff558B37),
            item: numbers[index],
          );
        },
      ),
    );
  }
}
