import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/rounded_textfield.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class Newsletter extends StatelessWidget {
  const Newsletter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Dimension.height15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
            text: "Monthly Newsletter",
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: Dimension.height20,
          ),
          Container(
            color: Colors.white,
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            child: Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  width: Dimension.width335,
                  height: Dimension.height278,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius20),
                    color: Color(0xffF2EBE9),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: Dimension.height20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: Dimension.height20,
                          right: Dimension.height20,
                        ),
                        child: SmallText(
                          align: TextAlign.justify,
                          overflow: TextOverflow.visible,
                          text:
                              "Receive our monthly newsletter and receive updates on new stock, books and the occasional promotion.",
                        ),
                      ),
                      SizedBox(
                        height: Dimension.height20,
                      ),
                      RoundedTextField(
                        hintText: "Name",
                        inputType: TextInputType.text,
                        onChange: (String value) {},
                      ),
                      RoundedTextField(
                        hintText: "Email",
                        inputType: TextInputType.emailAddress,
                        onChange: (String value) {},
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 9,
                  bottom: -15,
                  child: Container(
                    alignment: Alignment.center,
                    width: 160,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppColor.mainColor,
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.mainColor,
                          blurRadius: 10.0,
                          offset: const Offset(
                            0.0,
                            4.0,
                          ),
                        ),
                      ],
                    ),
                    child: SmallText(
                      text: "Sign Up",
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
