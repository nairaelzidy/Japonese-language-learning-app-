import 'package:flutter/material.dart';



import '../component/PhrasesItem.dart';
import '../models/itemsModel.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<ItemModel> phrasesList = const [
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: '',
      enName: 'Are you coming',
    ),
    ItemModel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: '',
      enName: 'dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: '',
      enName: 'how_are_you_feeling.wav',
    ),
    ItemModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: '',
      enName: 'how_are_you_feeling.wav',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: '',
      enName: 'i_love_anime.wav',

    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: '',
      enName: 'i_love_programming.wav',

    ),
    ItemModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpName: '',
      enName: 'programming_is_easy.wav',

    ),
    ItemModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: '',
      enName: 'what_is_your_name.wav',

    ),
    ItemModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: '',
      enName: 'where_are_you_going.wav',

    ),
    ItemModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'Jū',
      enName: 'yes_im_coming.wav',

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: const Color(0xff50ADC7),
            item: phrasesList[index],
          );
        },
      ),
    );
  }

// List<Widget> getList(List<Number> numbers) {
//   List<Widget> itemsList = [];
//   for (int i = 0; i < numbers.length; i++) {
//     itemsList.add(
//       ListItem(
//         number: numbers[i],
//       ),
//     );
//   }

//   return itemsList;
// }
}