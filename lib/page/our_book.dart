import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/page/home.dart';
import 'package:flutter_application_1/widget/nav_bar.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class OurBook extends StatelessWidget {
  const OurBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Container(
              color: Colors.white,
              child: Stack(
                children: [
                  const Positioned(
                    top: -230,
                    left: -55,
                    height: 500,
                    width: 550,
                    child: Image(image: "images/ourbook.png"),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: Dimension.height170,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Image(
                              image: 'images/OurBooks/2.jpg',
                            ),
                            Image(
                              image: 'images/OurBooks/2.jpg',
                            ),
                            Image(
                              image: 'images/OurBooks/2.jpg',
                            ),
                          ]),
                      Padding(
                        padding: EdgeInsets.all(Dimension.height20),
                        child: Column(
                          children: [
                            SmallText(
                              text:
                                  'The Book Grocer online offers a broad and ever increasing range of discounted remainder and secondhand books.',
                              color: Colors.black,
                              overflow: TextOverflow.visible,
                              height: 1.5,
                            ),
                            SizedBox(
                              height: Dimension.height10,
                            ),
                            SmallText(
                              text:
                                  'Our specialty is sourcing discounted books of amazing quality and passing on to our customers the best possible price.\nWe take our book buying very seriously indeed. We scour the globe and the best publishers and suppliers for the best bargains, but no book simply arrives in our warehouse simply because it\'s cheap. \nIt has to be something we want to read ourselves and would reccomend to others. We like to be known as the business which sells discounted books yet looks and feels like a retail bookstore.',
                              color: Colors.black,
                              overflow: TextOverflow.visible,
                              height: 1.5,
                            ),
                            SizedBox(
                              height: Dimension.height10,
                            ),
                            SmallText(
                              text:
                                  'We are an Australian, family-owned business. We have been buying and selling books since 2000, when the first Castlebooks store opened in Kingston, ACT.',
                              color: Colors.black,
                              overflow: TextOverflow.visible,
                              height: 1.5,
                            ),
                            SizedBox(
                              height: Dimension.height10,
                            ),
                            SmallText(
                              text:
                                  'In 2007 we opened the first Book Grocer in Brunswick, Victoria. Book Grocers can now be found in a range of locations across Victoria, NSW, and of course, Canberra.',
                              color: Colors.black,
                              overflow: TextOverflow.visible,
                              height: 1.5,
                            ),
                            SizedBox(
                              height: Dimension.height10,
                            ),
                            SmallText(
                              text:
                                  'Our staff also love reading and recommending books to others and we are proud of the role they play in demonstrating to our customers how good discount books can be.',
                              color: Colors.black,
                              overflow: TextOverflow.visible,
                              height: 1.5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Image extends StatelessWidget {
  const Image({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        clipBehavior: Clip.none,
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
