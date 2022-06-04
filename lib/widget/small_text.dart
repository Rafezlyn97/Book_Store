import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';

class SmallText extends StatelessWidget {
  SmallText({
    required this.text,
    this.color = const Color(0xff787a91),
    this.overflow = TextOverflow.ellipsis,
    this.size = 0,
    this.height = 1.5,
    this.align = TextAlign.center,
    this.fontWeight = FontWeight.normal,
  });

  Color color;
  final String text;
  double size;
  TextOverflow overflow;
  double height;
  TextAlign align;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        overflow: overflow,
        height: height,
        color: color,
        fontSize: size == 0 ? Dimension.font15 : size,
        fontWeight: fontWeight,
      ),
    );
  }
}
