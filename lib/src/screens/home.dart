import 'package:flutter/material.dart';
import 'package:food_app/src/common.dart';
import 'package:food_app/src/widgets/best_food.dart';
import 'package:food_app/src/widgets/categories.dart';
import 'package:food_app/src/widgets/popular_food.dart';
import 'package:food_app/src/widgets/small_floating_button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "What would you like to eat?",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                    Positioned(
                      top: 10,
                      right: 12,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: grey[300],
                          offset: Offset(2, 1),
                          blurRadius: 5)
                    ]),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Find Food or Restaurant",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Categories(),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Popular Food",
                style: TextStyle(fontSize: 22, color: grey),
              ),
            ),
            PopularFood(),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Best Food",
                style: TextStyle(fontSize: 22, color: grey),
              ),
            ),
            // best food
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Stack(
                children: [
                  Card(
                    child: Container(
                      height: 275,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset("images/food.jpg"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  height: 40,
                                  child: Column(
                                    children: [
                                      Text("Some Food"),
                                      Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Row(
                                          children: [
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
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              "(298)",
                                              style: TextStyle(
                                                  color: grey, fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "\$34.99",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SmallButton(Icons.favorite),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "images/home.png",
                width: 28,
                height: 28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "images/target.png",
                width: 28,
                height: 28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "images/shopping-bag.png",
                width: 28,
                height: 28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "images/avatar.png",
                width: 28,
                height: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
