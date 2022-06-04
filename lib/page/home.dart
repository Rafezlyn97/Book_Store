import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/page/book/bestsell_book.dart';
import 'package:flutter_application_1/page/book/features_book.dart';
import 'package:flutter_application_1/page/book/genre_book.dart';
import 'package:flutter_application_1/widget/nav_bar.dart';
import 'package:flutter_application_1/widget/newsletter.dart';
import 'package:flutter_application_1/page/book/recentview_book.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.mainColor,
        foregroundColor: Colors.white,
      ),
      endDrawer: const NavBar(),
      body: SafeArea(
        child: PageView(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      top: -250.0,
                      child: Image.asset('images/homepage.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const FeaturesBook(),
                        const BestSellBook(),
                        const GenresBook(),
                        SizedBox(
                          height: Dimension.height56,
                        ),
                        const RecentViewBook(),
                        const Newsletter(),
                        SizedBox(
                          height: Dimension.height56,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
