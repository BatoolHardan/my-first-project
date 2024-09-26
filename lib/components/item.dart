import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toko/Screen/numbers_page.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      this.sound = '',
      required this.number,
      required this.color,
      required this.itemType});
  final Item number;
  final String sound;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF6DC), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
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
          IconButton(
              onPressed: () async {
                try {
                  AudioPlayer player = AudioPlayer();
                  await player.setSource(
                      AssetSource('sounds/family_members/daughter.wav'));
                  await player
                      .play(AssetSource('sounds/family_members/daughter.wav'));
                } catch (ex) {
                  print(ex);
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
    );
  }
}
