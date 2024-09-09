import 'package:flutter/material.dart';
import 'package:sopusons/pages/category/widgets/choicechip_widget.dart';
import 'package:sopusons/payment/payment_failed.dart';

import 'package:sopusons/bottom_navigation.dart';
import 'package:sopusons/splash_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        // change home later
        home: SplashScreen());
  }
}
