import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        childAspectRatio: 0.7, // Adjusted aspect ratio
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
        children: [
          for (int i = 1; i < 11; i++)
            Container(
              padding: const EdgeInsets.all(8), // Reduced padding
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color(0xFF4C53A5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "-50%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(5), // Reduced margin
                      child: Image.asset(
                        "images/$i.jpg",
                        height: 100, // Reduced height
                        width: double.infinity, // Set to fill available width
                        fit: BoxFit.cover, // Ensures the image covers the box
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 4), // Reduced padding
                    child: const Text(
                      "Product title",
                      style: TextStyle(
                        fontSize: 16, // Reduced font size
                        color: Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Description of my product. Description of my product. Description of my product.",
                      style: TextStyle(
                        fontSize: 14, // Reduced font size
                        color: Color(0xFF4C53A5),
                      ),
                      maxLines: 3, // Limits to 3 lines
                      overflow: TextOverflow.ellipsis, // Adds ellipsis for overflow
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 4), // Reduced padding
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$55",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        Icon(
                          Icons.shopping_cart_checkout,
                          color: Color(0xFF4C53A5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
