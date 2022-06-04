import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/list/recentview_list.dart';
import 'package:flutter_application_1/model/recentview_model.dart';
import 'package:flutter_application_1/page/details/recent_book_details.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class RecentViewBook extends StatefulWidget {
  const RecentViewBook({
    Key? key,
  }) : super(key: key);

  @override
  State<RecentViewBook> createState() => _RecentViewBookState();
}

class _RecentViewBookState extends State<RecentViewBook> {
  List<RecentlyView> recentView = RecentViewList.recentView;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned(
        left: -115,
        top: 65,
        child: Image.asset('images/Rectangle.png'),
      ),
      Padding(
        padding: EdgeInsets.only(left: Dimension.height15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(
              text: "Recently View",
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: Dimension.height20,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: Dimension.containerwidth308,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RecentlyViewDetails(
                                        recentViewModel: recentView[index],
                                      )),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimension.height15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: Dimension.height200,
                                  width: Dimension.width140,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimension.radius20),
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
                                    image: DecorationImage(
                                      image:
                                          AssetImage(recentView[index].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: Dimension.height10,
                                    left: Dimension.height15,
                                  ),
                                  child: SmallText(
                                    text: recentView[index].title,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    align: TextAlign.justify,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: Dimension.height05,
                                    left: Dimension.height15,
                                  ),
                                  child: SmallText(
                                      text: "by  ${recentView[index].author}"),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
