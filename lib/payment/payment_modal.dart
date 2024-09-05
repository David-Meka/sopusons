import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sopusons/payment/payment_confimation.dart';


class PaymentModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      height: 580,
      //  MediaQuery.of(context).size.height * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Card Details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Card number',
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'images/cart_images/Component 4.png',
                      // width: 50,
                      // height: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey)),
                      child: const TextField(
                        decoration: InputDecoration(
                          labelText: 'Expiry',
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: 'MM / YY',
                          hintStyle: TextStyle(color: Colors.grey),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'CVV',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              //TODO get info from the API
              buildInfoRow('Product Name:', 'Apple Smartwatch Series 6'),
              buildInfoRow('Qty:', '1'),
              buildInfoRow('Amount:', '₦ 900,000'),
              buildInfoRow('Delivery Fee:', '₦ 700'),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Delivery Address',
                  border: OutlineInputBorder(),
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 20),
              buildInfoRow('Total', '₦ 900,700', isBold: true),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentConfimation()));
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
                      'Make Payment',
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
