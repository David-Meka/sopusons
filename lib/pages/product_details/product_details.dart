import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sopusons/Cart/cart_product_container.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Product Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage('https://via.placeholder.com/400x200'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const  Center(
                    child: Icon(
                      Icons.play_circle_outline,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
             const SizedBox(height: 10),
            const  Text(
                'Apple Smartwatch Series 6',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            const  SizedBox(height: 5),
            const  Text(
                '\₦ 800,000.00',
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
            const  SizedBox(height: 10),
            const  Text(
                'DESCRIPTION',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
             const  SizedBox(height: 5),
            const   Text(
                '- GPS model lets you take calls and reply to texts\n'
                '- Measure your blood oxygen\n'
                '- Check your heart rhythm with ECG app\n'
                '- 1.5 times brighter display\n'
                '- Up to 18 hours of battery life\n'
                '- 5GHz Wi-Fi and U1 Ultra Wideband chip',
              ),
            const  SizedBox(height: 10),
            const   Text(
                'SPECIFICATIONS',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
             const  SizedBox(height: 5),
             const  Text(
                '• Compatible with iOS\n'
                '• Includes charging cable\n'
                '• Water resistant\n'
                '• Model: Series 6',
              ),
            const   SizedBox(height: 10),
            const   Divider(),
            const   Text(
                'You might also like',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
             const  SizedBox(height: 10),
              Row(
                children: [
                  CartProductContainer('images/assets/headset.png'),
                  SizedBox(
                    width: 10,
                  ),
                  CartProductContainer('images/assets/laptop.png'),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Add to Cart',
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 23,
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

  Widget _buildSuggestedProduct(String name, String price) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(name, style: TextStyle(fontSize: 14)),
          Text(price, style: TextStyle(fontSize: 14, color: Colors.green)),
        ],
      ),
    );
  }
}
