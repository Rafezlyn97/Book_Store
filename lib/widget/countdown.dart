import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class Countdown extends StatelessWidget {
  const Countdown({
    Key? key,
    required this.num,
    required this.text,
  }) : super(key: key);
  final String num;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: Dimension.height30, top: Dimension.height10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: Dimension.height10),
            child: BigText(
              text: num,
              fontWeight: FontWeight.bold,
              color: AppColor.TextColor,
            ),
          ),
          SizedBox(
            height: Dimension.height10,
          ),
          Padding(
            padding: EdgeInsets.only(left: Dimension.height05),
            child: SmallText(
              text: text,
              size: Dimension.font12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
