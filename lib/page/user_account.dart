import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/page/home.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/page/book/book_purchased.dart';
import 'package:flutter_application_1/widget/countdown.dart';
import 'package:flutter_application_1/widget/icon_text.dart';
import 'package:flutter_application_1/widget/nav_bar.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rating = 0.0;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
      ),
      endDrawer: const NavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: Dimension.height30,
                right: Dimension.height30,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        //1
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(
                                text: "Will Newman",
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: Dimension.height10),
                              SmallText(
                                align: TextAlign.justify,
                                text:
                                    "Constantly travelling and keeping up to\ndate with business related books.",
                              ),
                              SizedBox(
                                height: Dimension.height20,
                              ),
                              IconAndText(
                                icon: Icons.location_pin,
                                text: " Newcastle - Australia",
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: Dimension.height05,
                                  left: Dimension.height30,
                                ),
                                child: Container(
                                  height: Dimension.height80,
                                  width: Dimension.height80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Dimension.radius100),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 10.0,
                                        offset: Offset(
                                          0.0,
                                          4.0,
                                        ),
                                      ),
                                    ],
                                    image: const DecorationImage(
                                      image: AssetImage('images/user.png'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Dimension.height20,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: Dimension.height30,
                                ),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    elevation:
                                        MaterialStateProperty.all<double>(5.0),
                                    shadowColor:
                                        MaterialStateProperty.all<Color>(
                                            AppColor.mainColor),
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColor.mainColor),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ), //here
                                  child: SmallText(
                                    text: "Edit Profile",
                                    color: Colors.white,
                                    size: Dimension.font12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Countdown(
                  num: "21",
                  text: "Books",
                ),
                Countdown(
                  num: "5",
                  text: "Reviews",
                ),
              ],
            ),
            SizedBox(
              height: Dimension.height50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: Dimension.height15, bottom: Dimension.height30),
                  child: BigText(
                    text: "Your Purchased (21)",
                    color: AppColor.TextColor,
                    fontWeight: FontWeight.bold,
                    size: Dimension.font20,
                  ),
                ),
                Stack(children: <Widget>[
                  //userPurchased
                  Positioned(
                    left: -95,
                    top: 25,
                    child: Image.asset('images/Red.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Dimension.height15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              const UserPurchased(
                                image: 'images/UserProfile/1.jpg',
                              ),
                              SizedBox(
                                width: Dimension.height20,
                              ),
                              const UserPurchased(
                                image: 'images/UserProfile/2.jpg',
                              ),
                              SizedBox(
                                width: Dimension.height20,
                              ),
                              const UserPurchased(
                                image: 'images/UserProfile/3.jpg',
                              ),
                              SizedBox(
                                width: Dimension.height20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
            SizedBox(
              height: Dimension.height50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: Dimension.height15, bottom: Dimension.height30),
                  child: BigText(
                    text: "Your Review (7)",
                    size: Dimension.font20,
                    color: AppColor.TextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Review(
                      comment:
                          'A must read for everybody.\nThis book taught me so many\nthings about...',
                      rating: rating,
                      image: 'images/UserProfile/1.jpg',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Review(
                      comment: 'Unbelievable value, next level\nstorytelling.',
                      rating: rating,
                      image: 'images/UserProfile/2.jpg',
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: Dimension.height50,
            ),
          ],
        ),
      ),
    );
  }
}

class Review extends StatelessWidget {
  const Review({
    Key? key,
    required this.rating,
    required this.comment,
    required this.image,
  }) : super(key: key);

  final double rating;
  final String comment;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimension.containerHeight140,
          width: Dimension.containerwidth308,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dimension.radius20),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
                offset: Offset(
                  1.0,
                  5.0,
                ),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(Dimension.height20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(Dimension.height05),
                          child: SmallText(
                            text: comment,
                            color: AppColor.TextColor,
                            size: Dimension.font12,
                            align: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: Dimension.height05),
                          child: SmallText(
                            text: "Read more >>",
                            size: Dimension.font10,
                          ),
                        ),
                        SizedBox(
                          height: Dimension.height05,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: Dimension.height05,
                            left: Dimension.height05,
                          ),
                          child: SmoothStarRating(
                            color: AppColor.mainColor,
                            borderColor: AppColor.mainColor,
                            rating: 2,
                            size: 15.0,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            starCount: 5,
                            allowHalfRating: true,
                            spacing: 2.0,
                            onRatingChanged: (value) {},
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: Dimension.height20),
                  child: Container(
                    height: Dimension.height100,
                    width: Dimension.height80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(94, 158, 158, 158),
                            blurRadius: 10.0,
                            offset: Offset(
                              1.0,
                              4.0,
                            ),
                          ),
                        ],
                        image: DecorationImage(image: AssetImage(image))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
