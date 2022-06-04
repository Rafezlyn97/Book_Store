import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    required this.onPress,
    required this.text,
    this.height = 0,
    this.width = 0,
    this.color = const Color(0xff5ABD8C),
  });

  final String text;
  final void Function() onPress;
  double height;
  double width;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimension.height10),
      child: Material(
        elevation: 3.0,
        color: color,
        borderRadius: BorderRadius.circular(Dimension.radius20),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: width == 0 ? Dimension.width335 : width,
          height: height == 0 ? Dimension.height56 : height,
          child: SmallText(
            text: text,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
