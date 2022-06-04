import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';

class BigText extends StatelessWidget {
  String text;
  Color color;
  TextOverflow overflow;
  double size;
  TextAlign align;
  FontWeight fontWeight;

  BigText({
    required this.text,
    this.color = Colors.black,
    this.size = 0,
    this.overflow = TextOverflow.ellipsis,
    this.align = TextAlign.center,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontSize: size == 0 ? Dimension.font30 : size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
