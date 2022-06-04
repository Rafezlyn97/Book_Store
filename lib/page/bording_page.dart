import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/bottom_slider.dart';
import 'package:flutter_application_1/widget/splash_card.dart';
import 'package:flutter_application_1/widget/splash_w_button.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //print("current height is " + MediaQuery.of(context).size.height.toString());

    return Scaffold(
      body: Container(
        //color: Colors.blue,
        padding: EdgeInsets.only(bottom: Dimension.height80),
        child: PageView(
          controller: controller,
          children: [
            SplashCard(
              text: "Discounted\n Secondhand Books",
              desc: "Used and near new secondhand books at great prices.",
              image: "images/1.png",
            ),
            SplashCard(
              text: "Discounted\n Secondhand Books",
              desc: "Used and near new secondhand books at great prices.",
              image: "images/2.png",
            ),
            SplashCard(
              text: "Discounted\n Secondhand Books",
              desc: "Used and near new secondhand books at great prices.",
              image: "images/3.png",
            ),
            SplashCard(
              text: "Discounted\n Secondhand Books",
              desc: "Used and near new secondhand books at great prices.",
              image: "images/4.png",
            ),
            const SplashCardWithButton(),
          ],
        ),
      ),
      bottomSheet: BottomSlider(controller: controller),
    );
  }
}
