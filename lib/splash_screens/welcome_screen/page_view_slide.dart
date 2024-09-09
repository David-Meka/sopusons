import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sopusons/splash_screens/welcome_screen/welcome1.dart';
import 'package:sopusons/splash_screens/welcome_screen/welcome2.dart';
import 'package:sopusons/splash_screens/welcome_screen/welcome3.dart';

class PageViewSlide extends StatefulWidget {
  const PageViewSlide({super.key});

  @override
  State<PageViewSlide> createState() => _PageViewSlideState();
}

class _PageViewSlideState extends State<PageViewSlide> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller,
          children: [
            Welcome1(),
            Welcome2(),
            Welcome3(),
          ],
        ),
        Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                      dotWidth: 100,
                      dotHeight: 5,
                      activeDotColor: Colors.white),
                ),
              ],
            ))
      ],
    );
  }
}
