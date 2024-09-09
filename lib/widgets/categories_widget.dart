import 'package:flutter/cupertino.dart';

class CategoriesSlideWidget extends StatelessWidget {
  const CategoriesSlideWidget(
      {required this.image4,
      required this.image3,
      required this.image2,
      required this.image,
      required this.image5,
      required this.image6,
      super.key});

  final String image;
  final String image2;
  final String image3;
  final String image4;
  final String image5;
  final String image6;
//TODO put category name
  @override
  Widget build(BuildContext context) {
    double picturewidth = 50;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              image,
              width: picturewidth,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                image2,
                width: picturewidth,
              )),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              image3,
              width: picturewidth,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                image4,
                width: picturewidth,
              )),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                image5,
                width: picturewidth,
              )),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                image6,
                width: picturewidth,
              )),
        ],
      ),
    );
  }
}
