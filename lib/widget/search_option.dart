import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/page/search.dart';
import 'package:flutter_application_1/page/search_menu.dart';
import 'package:flutter_application_1/widget/big_text.dart';

class SearchOption extends StatefulWidget {
  const SearchOption({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchOption> createState() => _SearchOptionState();
}

class _SearchOptionState extends State<SearchOption> {
  bool color = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(Dimension.height20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchMainPage()),
                  );
                });
              },
              child: BigText(
                text: "All",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                size: Dimension.font24,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Dimension.height20),
            child: GestureDetector(
              onTap: () {
                //IF THE USER TAP THE TEXT COLOR WILL CHANGE TO BLACK AND WILL GO TO THE OPTION CATEGORY
              },
              child: BigText(
                text: "New Releases",
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                size: Dimension.font24,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Dimension.height20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  color = !color;
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchPage()),
                  );
                });
              },
              child: BigText(
                text: "Genres",
                color: color ? Colors.black : Colors.grey,
                fontWeight: FontWeight.bold,
                size: Dimension.font24,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              //IF THE USER TAP THE TEXT COLOR WILL CHANGE TO BLACK AND WILL GO TO THE OPTION CATEGORY
            },
            child: Padding(
              padding: EdgeInsets.all(Dimension.height20),
              child: BigText(
                text: "The Arts",
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                size: Dimension.font24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
