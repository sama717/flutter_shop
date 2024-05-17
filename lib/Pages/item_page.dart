import 'package:flutter/material.dart';
import 'package:flutter_shop/Widgets/item_app_bar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDECF2),
      body: ListView(
        children: const [
          ItemAppBar(),
        ],
      ),
    );
  }
}