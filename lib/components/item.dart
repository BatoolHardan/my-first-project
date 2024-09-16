import 'package:flutter/material.dart';
import 'package:toko/Screen/numbers_page.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text('Numbers'),
          backgroundColor: Colors.brown,
        ),
        body: SizedBox(
          height: 100,
          child: Row(children: [
            Container(
                color: const Color.fromARGB(255, 212, 207, 207),
                child: Image.asset(number.image)),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number.JpName,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    number.enName,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          ]),
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
