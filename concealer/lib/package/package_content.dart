import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Concealer extends StatelessWidget {
  Concealer({super.key, required this.height, required this.width});
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
      ),
    );
  }
}
