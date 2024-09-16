import 'package:flutter/material.dart';
import 'package:toko/components/item.dart';

void main() {
  runApp(const NumbersPage());
}

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final Number one = const Number(
      image: 'assets/images/family_members/family_daughter.png ',
      JpName: 'icho',
      enName: 'one');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text('Numbers'),
          backgroundColor: Colors.brown,
        ),
        body: Column(
          children: [
            Item(number: one),
          ],
        ),
      ),
    );
  }
}

class Number {
  final image;
  final String JpName;
  final String enName;
  const Number(
      {required this.image, required this.JpName, required this.enName});
}
