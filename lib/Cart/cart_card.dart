import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCard extends StatefulWidget {
  const CartCard({super.key});

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int quantity = 1;
  void _increaseCartItemQuantity() {
    setState(() {
      quantity++;
    });

    // print('item increases');
  }

  void _decreaseCartItemQunatity() {
    setState(() {
      quantity--;
    });

    // print('decrease item');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 194, 182, 182),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0.3, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      height: 220,
      width: 550,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'images/assets/wrist.png',
                  width: 100,
                ),
               const  Spacer(),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //TODO name of item collected from the api
                    Text('Apple Smartwatch Series 6'),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                    ),
                    Row(
                      children: [
                        Text('N 800,000'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('N 000,000')
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'In stock',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 6)),
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 100,
                    height: 40,
                    child: Center(
                      child: Text('Remove',
                          style: GoogleFonts.nunito(color: Colors.blue)),
                    )),
                const Spacer(),
                Container(
                  child: Row(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment(0.0, 0.0),
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                //TODO make color change when tapped on added
                                color: Color.fromARGB(255, 165, 212, 250),
                                shape: BoxShape.circle),
                          ),
                          IconButton(
                            onPressed: () {
                              _decreaseCartItemQunatity();
                            },
                            icon: Icon(
                              size: 30,
                              Icons.remove_rounded,
                            ),
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8)),
                      Text(
                        '$quantity',
                        style: GoogleFonts.nunito(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8)),
                      Stack(
                        alignment: Alignment(0.0, 0.0),
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                //TODO make color change when tapped on added
                                color: Colors.blue,
                                shape: BoxShape.circle),
                          ),
                          IconButton(
                            onPressed: () {
                              _increaseCartItemQuantity();
                            },
                            icon: Icon(
                              size: 30,
                              Icons.add_rounded,
                            ),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
