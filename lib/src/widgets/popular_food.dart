import 'package:flutter/material.dart';
import 'package:food_app/src/common.dart';
import 'package:food_app/src/widgets/small_floating_button.dart';

class Food {
  final String name;
  final String image;
  final double price;

  Food({this.name, this.image, this.price});
}

List<Food> foodList = [
  Food(name: "Cereals", image: "1.jpg", price: 5.99),
  Food(name: "Massala", image: "3.jpg", price: 13.99),
  Food(name: "Taccos", image: "5.jpg", price: 3.72),
  Food(name: "Cereals", image: "1.jpg", price: 5.99),
];

class PopularFood extends StatefulWidget {
  @override
  _PopularFoodState createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodList.length,
        itemBuilder: (_, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: red[50], offset: Offset(3, 8), blurRadius: 15)
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/${foodList[index].image}",
                        width: 140,
                        height: 140,
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(foodList[index].name),
                          ),
                          SmallButton(Icons.favorite),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Text(
                                  "4.5",
                                  style: TextStyle(color: grey, fontSize: 12),
                                ),
                                SizedBox(width: 3),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: red,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: grey,
                                  size: 14,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "(298)",
                                  style: TextStyle(color: grey, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 3),
                      Row(
                        children: [
                          Text(
                            "\$${foodList[index].price}",
                            style: TextStyle(color: black, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
