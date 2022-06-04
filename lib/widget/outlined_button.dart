import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class RoundedOutlineButton extends StatelessWidget {
  const RoundedOutlineButton({
    Key? key,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  final String text;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return AppColor.mainColor;
    }

    return SizedBox(
      height: 56,
      width: 335,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith(getColor),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return AppColor.mainColor;
              }
              return Colors.white;
            },
          ),
          elevation: MaterialStateProperty.all<double>(0.0),
          side: MaterialStateProperty.all<BorderSide>(
              BorderSide(color: AppColor.mainColor, width: 1.5)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimension.radius20),
            ),
          ),
        ),
        onPressed: onPress,
        child: SmallText(
          text: text,
          color: AppColor.mainColor,
        ),
      ),
    );
  }
}
