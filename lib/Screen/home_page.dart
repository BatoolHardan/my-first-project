import 'package:flutter/material.dart';
import 'package:toko/Screen/family_members_page.dart';
import 'package:toko/Screen/numbers_page.dart';
import 'package:toko/components/category_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: [
        Category(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const NumbersPage();
            }));
          },
          text: 'numbers',
          color: Colors.red,
        ),
        Category(
          text: 'Family',
          color: Colors.green,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FamilyMembersPage();
            }));
          },
        ),
        Category(
          text: 'phrese',
          color: Colors.orange,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FamilyMembersPage();
            }));
          },
        ),
        Category(
          text: 'batool',
          color: Colors.pink,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const NumbersPage();
            }));
          },
        )
      ]),
    );
  }
}
