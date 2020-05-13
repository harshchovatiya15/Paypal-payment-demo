import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paypal_demo/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stripe Demo',
      home: Scaffold(
        body: HomePage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
