import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome1 extends StatelessWidget {
  const Welcome1({super.key});

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
          children: [
            const SizedBox(
              height: 110,
            ),
            Image.asset('images/splash_screen/Frame 45525.png'),
            const SizedBox(
              height: 40,
            ),
            Image.asset('images/splash_screen/convenience.png'),
            SizedBox(
              height: 110,
            ),
            Container(
              child: Stack(
                children: [
                  Image.asset('images/assets/gadget background copy 2 (1).png'),
                  // Center(
                  //   child: Container(
                  //     margin: EdgeInsets.only(top: 150),
                  //     width: 370,
                  //     height: 60,
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(12)),
                  //     child: Center(
                  //       child: Text(
                  //         'Continue',
                  //         style: GoogleFonts.nunito(
                  //           fontSize: 18,
                  //           fontWeight: FontWeight.bold,
                  //           color: const Color.fromARGB(255, 6, 94, 167),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
