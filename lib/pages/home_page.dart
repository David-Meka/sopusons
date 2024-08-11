import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: <Widget>[
          const Align(
            alignment: Alignment.center,
          ),
          Center(
            child: Container(
              color: Colors.white,
              height: 50,
              width: 300,
              child: Text('Search anything'),
            ),
          )
        ],
      ),
    );
  }
}
