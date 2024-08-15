import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// final CarouselController _controller = CarouselController();

class BannerSlide extends StatefulWidget {
  const BannerSlide({super.key});

  @override
  State<BannerSlide> createState() => _BannerSlideState();
}

class _BannerSlideState extends State<BannerSlide> {
  final List<String> imgList = [
    'images/slide/flash sales .png',
    'images/slide/flash sales .png',
    'images/slide/flash sales .png',
  ];

  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          items: imgList
              .map((item) => Container(
                    child: Center(
                      child: Image.asset(item,
                          fit: BoxFit.cover, width: double.infinity),
                    ),
                  ))
              .toList(),
          options: CarouselOptions(
            height: 120.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        // SizedBox(height: .0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((imgList) {
            int index = imgList.indexOf(imgList);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? Colors.blueAccent : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       options: CarouselOptions(
        
//         height: 200.0,
//         autoPlay: true,
//         enlargeCenterPage: true,
//         aspectRatio: 16 / 9,
//         autoPlayCurve: Curves.fastOutSlowIn,
//         enableInfiniteScroll: true,
//         autoPlayAnimationDuration: Duration(milliseconds: 900),
//         viewportFraction: 0.8,
//       ),
//       items: imgList
//           .map((item) => Container(
//                 child: Center(
//                   child: Image.asset(item, fit: BoxFit.cover, width: 1000),
//                 ),
//               ))
//           .toList(),
//     );
//   }
// }
