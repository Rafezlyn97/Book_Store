import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/filter_page.dart';
import 'package:flutter_application_1/widget/nav_bar.dart';
import 'package:flutter_application_1/widget/search_card.dart';

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
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {
              // showSearch(
              //     context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          ),
          SizedBox(
            width: Dimension.height15,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => const FilterPage()),
              // );
            },
            child: const Icon(
              Icons.sort,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: Dimension.height15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Dimension.height20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(Dimension.height20),
                      child: BigText(
                        text: "Genres",
                        fontWeight: FontWeight.bold,
                        size: Dimension.font24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Dimension.height20),
                      child: BigText(
                        text: "New Releases",
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        size: Dimension.font24,
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.all(Dimension.height20),
                        child: BigText(
                          text: "History",
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          size: Dimension.font24,
                        ),
                      ),
                      onTap: () {},
                    ),
                    Padding(
                      padding: EdgeInsets.all(Dimension.height20),
                      child: BigText(
                        text: "The Arts",
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        size: Dimension.font24,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SearchCard(
                    color: AppColor.bgColor3,
                    title: 'Biography',
                    image: 'images/Search/Biography.jpg',
                  ),
                  SearchCard(
                    color: AppColor.bgColor4,
                    title: 'Business',
                    image: 'images/Search/Business.jpg',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SearchCard(
                    color: AppColor.bgColor5,
                    title: 'Children',
                    image: 'images/Search/Children.jpg',
                  ),
                  SearchCard(
                    color: AppColor.bgColor6,
                    title: 'Cookery',
                    image: 'images/Search/Cookery.jpg',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SearchCard(
                    color: AppColor.bgColor7,
                    title: 'Fiction',
                    image: 'images/Search/Fiction.jpg',
                  ),
                  SearchCard(
                    color: AppColor.bgColor8,
                    title: 'Graphic Novel',
                    image: 'images/Search/GraphicNovels.jpg',
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
