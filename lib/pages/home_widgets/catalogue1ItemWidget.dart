import 'package:flutter/material.dart';

class Catalogue1itemwidget extends StatelessWidget {
  const Catalogue1itemwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 6.h,
          vertical: 12.h,
        ),
      ),
    );
  }
}
