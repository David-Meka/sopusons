import 'package:flutter/cupertino.dart';

class CategoriesSlideWidget extends StatelessWidget {
  const CategoriesSlideWidget({super.key});
//TODO put category name
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              'images/assets/wrist.png',
              width: 80,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                'images/assets/wrist.png',
                width: 80,
              )),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              'images/assets/wrist.png',
              width: 80,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                'images/assets/wrist.png',
                width: 80,
              )),
        ],
      ),
    );
  }
}
