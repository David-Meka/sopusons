import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    color: Colors.blue,
                    height: 250,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
