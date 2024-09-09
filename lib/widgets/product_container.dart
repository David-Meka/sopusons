import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sopusons/pages/product_details/product_details.dart';

class ProductContainer extends StatefulWidget {
  ProductContainer({
    required this.pictureString,
    required this.productName,
    required this.productPrice,
    super.key,
  });

  final String pictureString;
  final String productName;
  final String productPrice;
  // final Function? addToCart;

  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  final List<Product> cart = [];

  // final List<ProductContainer> selected = [];

  void _addToCart(product) {
    setState(() {
      cart.add(product);
    });
  }

  // void _addToSelected(ProductContainer selectedItem) {
  //   setState(() {
  //     selected.add(selectedItem);
  //   });
  // }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 170,
      height: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 39, 38, 38)),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductDetailsScreen()));
            },
            child: Container(
              child: Image.asset(widget.pictureString, height: 130),
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // get product name from api
              // TODO remove unecessary comments
              // I don't know how i came about widget but it worked
              Text(
                widget.productName,
                style: GoogleFonts.nunito(fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //get product price from api
                  Text(
                    'N${widget.productPrice}',
                    style: GoogleFonts.nunito(
                        fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  //TODO onpressed change color to

                  Icon(
                    Icons.favorite_border_outlined,
                    size: 26,
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1)),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            height: 41,
            width: 150,
            child: Center(
                child: TextButton(
                    onPressed: () {
                      _addToCart;
                    },
                    child: Text(
                      'Add to cart',
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ))),
          )
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final String price;
  final String image;

  Product({required this.name, required this.price, required this.image});
}
