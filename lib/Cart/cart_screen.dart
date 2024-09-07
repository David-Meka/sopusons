import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sopusons/Cart/cart_card.dart';
import 'package:sopusons/Cart/cart_product_container.dart';
import 'package:sopusons/bottom_navigation.dart';
import 'package:sopusons/payment/payment_modal.dart';
// import 'package:sopusons/widgets/product_container.dart'; 

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void _paymentModal() {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        // barrierColor: Colors.white,
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        builder: (context) => PaymentModal());
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (contex) => const BottomNavigation())),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.white,
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            // color: Colors.blue,
            width: width,
            // padding: const EdgeInsets.all(16),

            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 10.0),
                  child: Text('3 item in cart'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                ),
                const CartCard(),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                const CartCard(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                ),
                const CartCard(),
                // SizedBox(
                // height: 10,
                // ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _paymentModal();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)),
                    width: 450,
                    height: 60,
                    child: Center(
                      child: Text(
                        'Checkout (₦1,800,00)',
                        style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                ),
                Text(
                  'Returns and Refunds are being made convenient',
                  style: GoogleFonts.nunito(fontWeight: FontWeight.bold),
                ),
                const Text(
                    'Free return and refund within 7 days of the product purchase'),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                Text(
                  // onPressed: () {},

                  'Learn More', style: GoogleFonts.nunito(color: Colors.blue),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CartProductContainer('images/cart_images/Image (6).png'),
                      const SizedBox(
                        width: 10,
                      ),
                      CartProductContainer('images/cart_images/Image (4).png'),
                      const SizedBox(
                        width: 10,
                      ),
                      CartProductContainer('images/cart_images/Image (5).png'),
                      const SizedBox(
                        width: 10,
                      ),
                      CartProductContainer('images/cart_images/Image (4).png')
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                Text(
                  'Recomended For You',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CartProductContainer('images/cart_images/Image (6).png'),
                      const SizedBox(
                        width: 10,
                      ),
                      CartProductContainer('images/cart_images/Image (4).png'),
                      const SizedBox(
                        width: 10,
                      ),
                      CartProductContainer('images/cart_images/Image (5).png'),
                      const SizedBox(
                        width: 10,
                      ),
                      CartProductContainer('images/cart_images/Image (4).png')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
