import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  ProductContainer(this.pictureString, {super.key});

  String pictureString = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 160,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 39, 38, 38)),
      ),
      child: Column(
        children: [
          Container(
            child: Image.asset(pictureString),
          ),
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
