import 'package:flutter/material.dart';
import 'package:flutter_shop/Pages/cart_page.dart';
import 'package:flutter_shop/Pages/home_page.dart';
import 'package:flutter_shop/Pages/item_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      theme: ThemeData(
       scaffoldBackgroundColor : Colors.white ,
    ),
    routes:{
        "/" : (context) => const HomePage(),
        "cartPage" : (context) => const CartPage(),
        "itemPage" : (context) => const ItemPage(),
    },
    );
    }
    }