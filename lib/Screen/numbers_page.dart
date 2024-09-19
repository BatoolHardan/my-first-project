import 'package:flutter/material.dart';
import 'package:toko/components/item.dart';

void main() {
  runApp(const NumbersPage());
}

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final Number one = const Number(
      image: 'assets/images/family_members/family_daughter.png',
      JpName: 'icho',
      enName: 'one');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Numbers'),
            backgroundColor: Colors.brown,
          ),
          body: ListView(
            children: [
              Item(number: one),
              Item(number: one),
              Item(number: one),
              Item(number: one),
              Item(number: one),
              Item(number: one),
            ],
          )),
    );
  }
}
