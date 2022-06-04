import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/rounded_button.dart';

class SplashCardWithButton extends StatelessWidget {
  const SplashCardWithButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 30.0,
          left: -45.0,
          child: Image.asset('images/left.png'),
        ),
        Positioned(
          top: 40.0,
          right: -50.0,
          child: Image.asset('images/right.png'),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BigText(
              text: "Books for\n Every Tastes",
              color: AppColor.mainColor,
            ),
            // SizedBox(
            //   height: Dimension.height80,
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedButton(
                  onPress: () {},
                  text: "Sign In",
                ),
                RoundedButton(
                  onPress: () {},
                  text: "Sign Up",
                ),
              ],
            )
          ],
        ),
        Positioned(
          bottom: 0,
          left: -150.0,
          child: Image.asset(
            'images/4.png',
            width: Dimension.width400,
            height: Dimension.height400,
          ),
        ),
      ],
    );
  }
}
