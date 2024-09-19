import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.JpName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                number.enName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        const Icon(
          Icons.play_arrow,
          color: Colors.white,
          size: 28,
        ),
      ],
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
