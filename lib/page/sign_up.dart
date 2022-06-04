import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/outlined_button.dart';
import 'package:flutter_application_1/widget/rounded_password.dart';
import 'package:flutter_application_1/widget/rounded_textfield.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: AppColor.mainColor,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Dimension.height20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "Sign Up"),
              SizedBox(
                height: Dimension.height30,
              ),
              RoundedTextField(
                hintText: 'First and Last Name',
                inputType: TextInputType.text,
                onChange: (String value) {},
              ),
              RoundedTextField(
                hintText: 'Email Address',
                inputType: TextInputType.emailAddress,
                onChange: (String value) {},
              ),
              RoundedPasswordField(
                hintText: 'Password',
                onChange: (String value) {},
              ),
              RoundedTextField(
                hintText: 'Mobile Phone',
                inputType: TextInputType.number,
                onChange: (String value) {},
              ),
              RoundedTextField(
                hintText: 'Optional Group Special Code',
                inputType: TextInputType.text,
                onChange: (String value) {},
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: AppColor.mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimension.radius05),
                      side: BorderSide(
                        color: AppColor.container,
                        width: 1,
                      ),
                    ),
                    value: false,
                    onChanged: (value) {},
                  ),
                  SmallText(
                    text: "Please sign me upi for the monthly newsletter.",
                    color: AppColor.TextColor,
                  ),
                ],
              ),
              SizedBox(
                height: Dimension.height50,
              ),
              Center(
                child: RoundedOutlineButton(
                  text: "Sign Up",
                  onPress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
