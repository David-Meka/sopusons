import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductContainer extends StatelessWidget {
  ProductContainer(this.pictureString, {super.key});

  String pictureString = '';
  @override
  Widget build(BuildContext context) {
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
          Container(
            child: Image.asset(pictureString, height: 130),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // get product name from api
              Text(
                'Product name',
                style: GoogleFonts.nunito(fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //get product price from api
                  Text(
                    'N 15,000',
                    style: GoogleFonts.nunito(
                        fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  //TODO onpressed change color to
                  const Icon(
                    Icons.favorite_border_outlined,
                    size: 26,
                    color: Colors.orange,
                  ),
                ],
              ),
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 1)),
          Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            height: 41,
            width: 150,
            child: Center(
                child: TextButton(
                    onPressed: () {},
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
