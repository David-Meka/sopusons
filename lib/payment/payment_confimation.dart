import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sopusons/Cart/cart_screen.dart';
import 'package:sopusons/pages/home_page/home_page.dart';
import 'package:sopusons/bottom_navigation.dart';

class PaymentConfimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Payment Confirmation'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CartScreen(
                          cart: [],
                        )),
              );
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              'Congratulations',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Image.asset('images/payment/Vector (4).png'),
            const SizedBox(height: 10),
            Text(
              'Payment Successful',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 30),
            Card(
              color: Colors.white,
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildInfoRow('Product Name:', 'Apple Smartwatch Series 6'),
                    buildInfoRow('Qty:', '1'),
                    buildInfoRow('Amount:', '₦ 900,000'),
                    buildInfoRow('Delivery Fee:', '₦ 700'),
                    buildInfoRow(
                        'Delivery Address:', 'Oladimeji Street, Katampe...'),
                    buildInfoRow('Transaction ID:', 'GC12549302'),
                    buildInfoRow('Payment Date:', '04 December, 2023'),
                    const Divider(),
                    buildInfoRow('Total:', '₦ 900,700', isBold: true),
                  ],
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomNavigation()));
              },
              child: Container(
                width: 400,
                height: 55,
                // onPressed: () {},
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    'Back to Home',
                    style: GoogleFonts.nunito(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoRow(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
          Text(
            value,
            style: TextStyle(
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
