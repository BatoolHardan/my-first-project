import 'package:flutter/material.dart';
import 'package:toko/Screen/home_page.dart';

void main() {
  runApp(const toko());
}

class toko extends StatelessWidget {
  const toko({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
