import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class FeaturesBook extends StatelessWidget {
  const FeaturesBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: Dimension.height15, bottom: Dimension.height50),
          child: BigText(
            text: "Our Top Picks",
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        CarouselSlider(
          items: const [
            Features(
              title: "The Dissapearance\n of Emila Zola",
              image: "images/Featured_Titles/2.jpg",
              author: "Michael Rosen",
            ),
            Features(
              title: 'Fatherhood',
              author: 'Marcus Berkmann',
              image: 'images/Featured_Titles/1.jpg',
            ),
            Features(
              title: 'How to be The Best in\nTime and Space',
              author: 'The Time Travellers Handbook',
              image: 'images/Featured_Titles/3.jpg',
            ),
          ],
          options: CarouselOptions(
            viewportFraction: 0.5,
            height: Dimension.height350,
            enlargeCenterPage: true,
            initialPage: 1,
          ),
        ),
      ],
    );
  }
}

class Features extends StatelessWidget {
  const Features({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
  }) : super(key: key);

  final String image;
  final String title;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimension.height200,
          width: Dimension.width140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimension.radius20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 5.0,
                offset: Offset(0, 5),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(Dimension.height05),
          child: SmallText(
            text: title,
            color: Colors.black,
            size: Dimension.font12,
            fontWeight: FontWeight.bold,
          ),
        ),
        SmallText(
          text: author,
          size: Dimension.font10,
        ),
      ],
    );
  }
}
