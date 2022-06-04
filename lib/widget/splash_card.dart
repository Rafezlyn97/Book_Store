import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class SplashCard extends StatelessWidget {
  SplashCard({
    required this.text,
    required this.desc,
    required this.image,
  });

  final String text;
  final String desc;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BigText(
          text: text,
          color: AppColor.mainColor,
        ),
        SizedBox(
          height: Dimension.height30,
        ),
        SmallText(text: desc),
        SizedBox(
          height: Dimension.height100,
        ),
        Container(
          height: Dimension.containerHeight230,
          width: Dimension.containerwidth230,
          decoration: BoxDecoration(
            //color: Colors.amber,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}
