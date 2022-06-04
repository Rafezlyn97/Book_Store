import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class IconAndText extends StatelessWidget {
  IconAndText({
    Key? key,
    required this.icon,
    required this.text,
    this.size = 0,
    this.color = const Color(0xff7F8487),
  }) : super(key: key);

  final String text;
  final IconData icon;
  Color color;
  double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: size == 0 ? Dimension.font12 : size,
          color: color,
        ),
        Padding(
          padding: EdgeInsets.all(Dimension.height05),
          child: SmallText(text: text),
        ),
      ],
    );
  }
}
