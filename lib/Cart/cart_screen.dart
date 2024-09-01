import 'package:flutter/material.dart';
import 'package:sopusons/Cart/cart_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: Container(
        // color: Colors.blue,
        width: width,
        padding: const EdgeInsets.all(16),

        // padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 8.0, top: 10.0),
                child: Text('3 item in cart'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              CartCard(),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              CartCard(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              CartCard(),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              CartCard(),
            ],
          ),
        ),
      ),
    );
  }
}
