import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sopusons/Cart/cart_screen.dart';
import 'package:sopusons/payment/payment_modal.dart';

class PaymentFailed extends StatelessWidget {
  const PaymentFailed({super.key});
// TODO add condition to decide if payment confirmed or not
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/payment/cancel.png'),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Payment Failed',
              style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(cart: [],),
                  ),
                );
                // Navigator.of(context).push(
                // MaterialPageRoute(builder: (context) => PaymentModal()));
                showModalBottomSheet(
                    context: context, builder: (context) => PaymentModal());
              },
              child: Container(
                height: 55,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Try Again',
                    style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: 20,
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
}
