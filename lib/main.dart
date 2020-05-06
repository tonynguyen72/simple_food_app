import 'package:flutter/material.dart';
import 'package:food_app/src/screens/home.dart';
import 'package:food_app/src/widgets/categories.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Home(),
    );
  }
}
