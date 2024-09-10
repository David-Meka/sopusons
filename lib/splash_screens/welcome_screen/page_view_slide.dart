import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sopusons/bottom_navigation.dart';
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

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller,
          children: [
            const Welcome1(),
            const Welcome2(),
            const Welcome3(),
          ],
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
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
                    dotWidth: 100, dotHeight: 5, activeDotColor: Colors.white),
              ),
            ],
          ),
        ),
        onLastPage
            ? Container(
                margin: EdgeInsets.only(bottom: 10),
                alignment: Alignment.bottomCenter,
                child: PageViewToBottom())
            : Container(
                margin: EdgeInsets.only(bottom: 10),
                alignment: Alignment.bottomCenter,
                child: ContinueButton(
                  controller: _controller,
                  // page: welcome,
                ),
              )
      ],
    );
  }
}

class PageViewToBottom extends StatelessWidget {
  const PageViewToBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (ctx) => BottomNavigation()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 150),
        width: 370,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            'Done',
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 6, 94, 167),
            ),
          ),
        ),
      ),
    );
  }
}

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    required this.controller,
    // required this.page,
    super.key,
  });
  final PageController controller;
  // final List page;
  @override
  Widget build(BuildContext context) {
    // int count = 3;
    return GestureDetector(
      onTap: () {
        controller.nextPage(
            duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
      },
      child: Container(
        margin: EdgeInsets.only(top: 150),
        width: 370,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            'Continue',
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 6, 94, 167),
            ),
          ),
        ),
      ),
    );
  }
}
