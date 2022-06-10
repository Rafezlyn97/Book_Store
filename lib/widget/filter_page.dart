import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/model/avg_review_model.dart';
import 'package:flutter_application_1/model/genre_filter_model.dart';
import 'package:flutter_application_1/model/sort_model.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/rounded_button.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:get/get.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  List sortFilter = SortFilter.sortFilter;
  List genreFilter = GenreFilter.genreFilter;
  List reviewFilter = ReviewFilter.reviewFilter;
  int? groupValue;
  int? reviewValue;
  int? genreValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: BigText(
          text: "Filter",
          fontWeight: FontWeight.bold,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                top: Dimension.height20, right: Dimension.height10),
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const SearchPage()));
              },
              child: SmallText(
                text: "Cancel",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimension.height20,
                    vertical: Dimension.height10),
                child: SmallText(
                  text: "Sort By",
                  size: Dimension.font20,
                )),
            ListView.builder(
              shrinkWrap: true,
              itemCount: sortFilter.length,
              itemBuilder: (context, index) {
                return RadioListTile(
                  activeColor: AppColor.mainColor,
                  title: SmallText(
                    text: sortFilter.elementAt(index),
                    align: TextAlign.left,
                    color: Colors.black,
                  ),
                  value: index,
                  groupValue: groupValue,
                  onChanged: (val) {
                    setState(() {
                      groupValue = val as int;
                    });
                  },
                );
              },
            ),
            const Divider(),
            SizedBox(
              height: Dimension.height10,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimension.height20,
                    vertical: Dimension.height10),
                child: SmallText(
                  text: "Genre",
                  size: Dimension.font20,
                )),
            ListView.builder(
              shrinkWrap: true,
              itemCount: genreFilter.length,
              itemBuilder: (context, index) {
                return RadioListTile(
                  activeColor: AppColor.mainColor,
                  title: SmallText(
                    text: genreFilter.elementAt(index),
                    align: TextAlign.left,
                    color: Colors.black,
                  ),
                  value: index,
                  groupValue: genreValue,
                  onChanged: (val) {
                    setState(() {
                      genreValue = val as int;
                    });
                  },
                );
              },
            ),
            const Divider(),
            SizedBox(
              height: Dimension.height10,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimension.height20,
                    vertical: Dimension.height10),
                child: SmallText(
                  text: "Average Customer Review",
                  size: Dimension.font20,
                )),
            ListView.builder(
              shrinkWrap: true,
              itemCount: reviewFilter.length,
              itemBuilder: (context, index) {
                return RadioListTile(
                  activeColor: AppColor.mainColor,
                  title: SmallText(
                    text: reviewFilter.elementAt(index),
                    align: TextAlign.left,
                    color: Colors.black,
                  ),
                  value: index,
                  groupValue: reviewValue,
                  onChanged: (val) {
                    setState(() {
                      reviewValue = val as int;
                    });
                  },
                );
              },
            ),
            SizedBox(
              height: Dimension.height100,
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimension.height50),
        child: RoundedButton(
          onPress: () {},
          text: "Apply",
        ),
      ),
    );
  }
}
