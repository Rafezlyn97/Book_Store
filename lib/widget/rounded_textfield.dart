import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';

class RoundedTextField extends StatelessWidget {
  RoundedTextField({
    required this.hintText,
    required this.inputType,
    required this.onChange,
  });

  final String hintText;
  TextInputType inputType;
  final ValueChanged<String> onChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimension.height20,
        vertical: Dimension.height05,
      ),
      child: Container(
        height: Dimension.height56,
        width: Dimension.width335,
        decoration: BoxDecoration(
          color: AppColor.container,
          borderRadius: BorderRadius.circular(Dimension.radius20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimension.height20,
            vertical: Dimension.height05,
          ),
          child: TextField(
            //controller: controller,
            onChanged: onChange,
            keyboardType: inputType,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: AppColor.TextColor,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
