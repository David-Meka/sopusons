import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 160,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        children: [
          Container(),
          const Column(
            children: [
              Text('Product name'),
              Row(
                children: [
                  Text('N 15,000'),
                  Spacer(),
                  //TODO onpressed change color to
                  Icon(
                    Icons.favorite_border_outlined,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
