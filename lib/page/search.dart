import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/filter_page.dart';
import 'package:flutter_application_1/widget/nav_bar.dart';
import 'package:flutter_application_1/widget/search_bar.dart';
import 'package:flutter_application_1/widget/search_card.dart';
import 'package:flutter_application_1/widget/search_option.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AppColor.mainColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Dimension.height20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SearchBar(),
              const SearchOption(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SearchCard(
                      color: AppColor.bgColor3,
                      title: 'Biography',
                      image: 'images/Search/Biography.jpg',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SearchCard(
                      color: AppColor.bgColor4,
                      title: 'Business',
                      image: 'images/Search/Business.jpg',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SearchCard(
                      color: AppColor.bgColor5,
                      title: 'Children',
                      image: 'images/Search/Children.jpg',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SearchCard(
                      color: AppColor.bgColor6,
                      title: 'Cookery',
                      image: 'images/Search/Cookery.jpg',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SearchCard(
                      color: AppColor.bgColor7,
                      title: 'Fiction',
                      image: 'images/Search/Fiction.jpg',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SearchCard(
                      color: AppColor.bgColor8,
                      title: 'Graphic Novel',
                      image: 'images/Search/GraphicNovels.jpg',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: SearchCard(
                      color: AppColor.bgColor9,
                      title: 'History',
                      image: 'images/History/1.jpg',
                    ),
                    onTap: () {},
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
