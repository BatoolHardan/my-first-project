import 'package:flutter/material.dart';
import 'package:toko/components/item.dart';
import 'package:toko/Screen/numbers_page.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Item> familyMembers = const [
    Item(
        image: 'assets/images/family_members/family_father.png',
        JpName: 'Chichioya',
        enName: 'father',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/family_members/family_mother.png',
        JpName: 'Musume',
        enName: 'daughter',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/family_members/family_older_brother.png',
        JpName: 'San',
        enName: 'three',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/family_members/family_grandmother.png',
        JpName: ' Sebun',
        enName: 'four',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/family_members/family_grandmother.png',
        JpName: 'Go  ',
        enName: ' five',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/family_members/family_daughter.png',
        JpName: 'Roku',
        enName: 'six',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/family_members/family_older_sister.png',
        JpName: 'sebun',
        enName: 'seven',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/family_members/family_son.png',
        JpName: 'eight',
        enName: 'hachi',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/family_members/family_younger_brother.png ',
        JpName: 'kyu',
        enName: ' nine',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/family_members/family_younger_sister.png',
        JpName: 'ju',
        enName: 'ten',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/family_members/family_daughter.png',
        JpName: 'ju',
        enName: 'ten',
        sound: 'number_two_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Family Members',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
            itemCount: familyMembers.length,
            itemBuilder: (context, index) {
              return ListItem(
                sound: '',
                number: familyMembers[index],
                color: const Color(0xff558B37),
                itemType: 'family_members',
              );
            }));
  }
}
