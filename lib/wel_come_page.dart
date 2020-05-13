import 'package:flutter/material.dart';

import 'home_page.dart';

class WelComePage extends StatefulWidget {
  @override
  _WelComePageState createState() => _WelComePageState();
}

class _WelComePageState extends State<WelComePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wel Come page'),
        leading: IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            }),
      ),
      body: Center(
        child: Container(
          child: Text('Your payment are successfully'),
        ),
      ),
    );
  }
}
