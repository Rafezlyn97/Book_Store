import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BottomSlider extends StatelessWidget {
  const BottomSlider({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      padding: EdgeInsets.symmetric(horizontal: Dimension.height30),
      height: Dimension.height30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 5,
              effect: WormEffect(
                spacing: 16.0,
                dotColor: AppColor.TextColor,
                activeDotColor: AppColor.mainColor,
                dotWidth: 10.0,
                dotHeight: 10.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
