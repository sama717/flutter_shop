import 'package:flutter/material.dart';
import 'package:flutter_shop/Widgets/categories_widget.dart';
import 'package:flutter_shop/Widgets/home_app_bar.dart';
import 'package:flutter_shop/Widgets/items_widget.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(children: [
        const HomeAppBar(),
        Container(

          //height: 500,
          padding: const EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35),
            )
          ),
          child: Column(children: [
            Container(
              // search item
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "search here...",
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.camera_alt,
                    size: 27,
                    color: Color(0xFF4C53A5),
                  )
                ],
              ),
            ),
            // categories
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: const Text("Categories",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold ,
                  color: Color(0xFF4C53A5)),
                ),
            ),

            const CategoriesWidget(),
          //   items
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(vertical: 20 , horizontal: 10),
              child: const Text(
                "best selling",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5),
                ),
              ),
            ),
            const ItemsWidget(),
          ],
          ),
        )

      ],),
    );

  }
}