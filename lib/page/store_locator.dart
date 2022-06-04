import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/rounded_textfield.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class StoreLocatorPage extends StatelessWidget {
  const StoreLocatorPage({Key? key}) : super(key: key);

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
              BigText(text: "Help Us Help You"),
              SizedBox(
                height: Dimension.height30,
              ),
              SmallText(
                align: TextAlign.justify,
                text:
                    "It seems as this is your first time using our app, please enter your location so we can filter our results and stock accordingly to your local store.",
              ),
              SizedBox(
                height: Dimension.height10,
              ),
              SmallText(
                align: TextAlign.justify,
                text:
                    "If you choose to skip, you can change your location at any time in your account settings.",
              ),
              SizedBox(
                height: Dimension.height30,
              ),
              RoundedTextField(
                hintText: 'State',
                inputType: TextInputType.text,
                onChange: (String value) {},
              ),
              RoundedTextField(
                hintText: 'City',
                inputType: TextInputType.text,
                onChange: (String value) {},
              ),
              SizedBox(
                height: Dimension.height10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(Dimension.height20),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SmallText(
                      text: "Skip",
                      color: AppColor.mainColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
