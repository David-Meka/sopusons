import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sopusons/splash_screens/welcome_screen/page_view_slide.dart';
import 'package:sopusons/splash_screens/welcome_screen/welcome1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // temporal timer
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PageViewSlide()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 210,
              ),
              SizedBox(
                height: 170,
                child: Image.asset('images/assets/logo_main.png'),
              ),
              SizedBox(
                width: 350,
                child: Image.asset(
                  'images/assets/Big_logo.png',
                ),
              ),
              Text(
                'Your no1. market for the best Gadgets',
                style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 160,
              ),
              Container(
                // height: 200,
                width: width,
                alignment: Alignment(0, -5),
                // margin: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'images/assets/gadget background copy 2 (1).png',
                  fit: BoxFit.fitWidth,
                ),
              )
            ],
          )),
    );
  }
}
