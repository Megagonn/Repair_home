import 'package:flutter/material.dart';
import 'package:repairhome/cart.dart';
import 'package:repairhome/product.dart';
import 'package:repairhome/signin.dart';
import 'package:repairhome/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Splash(),
    );
  }
}