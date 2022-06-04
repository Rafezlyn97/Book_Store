import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/page/home.dart';
import 'package:flutter_application_1/page/our_book.dart';
import 'package:flutter_application_1/page/user_account.dart';
import 'package:flutter_application_1/widget/big_text.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.only(bottomLeft: Radius.circular(Dimension.radius250)),
      ),
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: Dimension.height20,
          vertical: Dimension.height100,
        ),
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: BigText(
              text: "Home",
              color: Colors.black,
              size: Dimension.font20,
              align: TextAlign.left,
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: BigText(
              text: "Our Books",
              color: Colors.black,
              size: Dimension.font20,
              align: TextAlign.left,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.store),
            title: BigText(
              text: "Our Stores",
              color: Colors.black,
              size: Dimension.font20,
              align: TextAlign.left,
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const OurBook()),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.person),
            title: BigText(
              text: "Account",
              color: Colors.black,
              size: Dimension.font20,
              align: TextAlign.left,
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const UserAccount()),
              );
            },
          ),
        ],
      ),
    );
  }
}
