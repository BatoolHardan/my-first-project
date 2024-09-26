import 'package:flutter/material.dart';
import 'package:toko/components/item.dart';

void main() {
  runApp(const NumbersPage());
}

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> numbers = const [
    Item(
        image: 'assets/images/numbers/number_one.png',
        JpName: 'icho',
        enName: 'one',
        sound: 'number_one_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_two.png',
        JpName: 'Ni',
        enName: ' two',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_three.png',
        JpName: 'San',
        enName: 'three',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_four.png',
        JpName: ' Sebun',
        enName: 'four',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_five.png',
        JpName: 'Go  ',
        enName: ' five',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_six.png',
        JpName: 'Roku',
        enName: 'six',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_seven.png',
        JpName: 'sebun',
        enName: 'seven',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_eight.png',
        JpName: 'eight',
        enName: 'hachi',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_nine.png',
        JpName: 'kyu',
        enName: ' nine',
        sound: 'number_two_sound.mp3'),
    Item(
      image: 'assets/images/numbers/number_ten.png',
      JpName: 'ju',
      enName: 'ten',
      sound: 'number_two_sound.mp3',
    ),
    Item(
        image: 'assets/images/numbers/number_ten.png',
        JpName: 'ju',
        enName: 'ten',
        sound: 'number_two_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Numbers'),
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return ListItem(
                  itemType: 'numbers',
                  sound: '',
                  number: numbers[index],
                  color: const Color(0xffEF9235));
            }));
  }

  List<Widget> getList(List<Item> numbers) {
    List<Widget> itemsList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemsList.add(ListItem(
          sound: '',
          itemType: 'numbers',
          number: numbers[i],
          color: const Color(0xffEF9235)));
    }
    return itemsList;
  }
}

class Item {
  final String sound;

  final String image;
  final String JpName;
  final String enName;
  const Item(
      {required this.image,
      required this.JpName,
      required this.enName,
      required this.sound});
}
