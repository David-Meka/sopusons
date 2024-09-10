import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome2 extends StatelessWidget {
  const Welcome2({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.orange[600],
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset('images/splash_screen/Frame 45525 (1).png'),
            const SizedBox(
              height: 40,
            ),
            Image.asset('images/splash_screen/variety illus 1.png'),
            SizedBox(
              height: 105,
            ),
            Container(
              child: Stack(
                children: [
                  Image.asset('images/assets/gadget background copy 2 (1).png'),
                  // Center(
                  //   // child: ContinueButton(),
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


