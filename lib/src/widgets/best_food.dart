import 'package:flutter/material.dart';

import '../common.dart';
import 'small_floating_button.dart';

class BestFood extends StatefulWidget {
  @override
  _BestFoodState createState() => _BestFoodState();
}

class _BestFoodState extends State<BestFood> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, int index) {
        return Padding(
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
                                  fontWeight: FontWeight.bold, fontSize: 20),
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
        );
      },
    );
  }
}
