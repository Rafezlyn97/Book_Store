import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/page/book/bestsell_book.dart';
import 'package:flutter_application_1/page/book/features_book.dart';
import 'package:flutter_application_1/page/book/genre_book.dart';
import 'package:flutter_application_1/page/cart.dart';
import 'package:flutter_application_1/page/search.dart';
import 'package:flutter_application_1/page/wish_list.dart';
import 'package:flutter_application_1/widget/nav_bar.dart';
import 'package:flutter_application_1/widget/newsletter.dart';
import 'package:flutter_application_1/page/book/recentview_book.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  PageController _pageController = PageController(
    initialPage: 0,
  );
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
          controller: _pageController,
          onPageChanged: (page) {
            setState(() {
              _currentIndex = page;
            });
          },
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
            const SearchPage(),
            const WishListPage(),
            const CartPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: AppColor.mainColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xffAFDFC7),
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 13.0,
        unselectedFontSize: 11.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
      ),
    );
  }
}
