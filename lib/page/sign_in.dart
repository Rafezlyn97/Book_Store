import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/outlined_button.dart';
import 'package:flutter_application_1/widget/rounded_password.dart';
import 'package:flutter_application_1/widget/rounded_textfield.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
              BigText(text: "Sign In"),
              SizedBox(
                height: Dimension.height30,
              ),
              RoundedTextField(
                hintText: 'Optional Group Special Code',
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
                    text: "Stay Logged In",
                    color: AppColor.TextColor,
                  ),
                  const Spacer(),
                  SmallText(
                    text: "Forgot Password?",
                    color: AppColor.TextColor,
                  ),
                ],
              ),
              SizedBox(
                height: Dimension.height50,
              ),
              Center(
                child: RoundedOutlineButton(
                  text: "Sign In",
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
