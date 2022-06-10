import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
//import 'package:flutter_application_1/list/bestSell_list.dart';
import 'package:flutter_application_1/model/bestSell_model.dart';
import 'package:flutter_application_1/page/details/bestSell_details.dart';
//import 'package:flutter_application_1/page/details/book_details.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class BestSellBook extends StatefulWidget {
  const BestSellBook({
    Key? key,
  }) : super(key: key);

  @override
  State<BestSellBook> createState() => _BestSellBookState();
}

class _BestSellBookState extends State<BestSellBook> {
  // List<BestSell> bestSell = BestSellList.bestSell;
  late Future<List<BestSell>> futureBestSell;

  @override
  void initState() {
    super.initState();
    futureBestSell = fetchBestSell();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Dimension.height15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
            text: "Best Sellers",
            align: TextAlign.left,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: Dimension.height20,
          ),
          SingleChildScrollView(
            child: FutureBuilder<List<BestSell>>(
              future: futureBestSell,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      SizedBox(
                        height: Dimension.height350,
                        child: ListView.builder(
                          itemCount: snapshot.data!.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: (() {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BestSellDetails(
                                          bestSellModel:
                                              snapshot.data![index])),
                                );
                              }),
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
                                              3.0,
                                            ),
                                          ),
                                        ],
                                        image: DecorationImage(
                                          image: AssetImage(
                                              snapshot.data![index].image),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Dimension.width140,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: Dimension.height05,
                                            top: Dimension.height10),
                                        child: SmallText(
                                          overflow: TextOverflow.clip,
                                          text: snapshot.data![index].title,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          align: TextAlign.justify,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Dimension.width140,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: Dimension.height05),
                                        child: SmallText(
                                          overflow: TextOverflow.clip,
                                          align: TextAlign.left,
                                          text:
                                              "by ${snapshot.data![index].author}",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: Dimension.height05,
                                        left: Dimension.height05,
                                      ),
                                      child: SmoothStarRating(
                                        color: AppColor.mainColor,
                                        borderColor: AppColor.mainColor,
                                        rating: snapshot.data![index].rating,
                                        size: 15.0,
                                        filledIconData: Icons.star,
                                        halfFilledIconData: Icons.star_half,
                                        defaultIconData: Icons.star_border,
                                        starCount: 5,
                                        allowHalfRating: true,
                                        spacing: 2.0,
                                        onRatingChanged: (value) {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                } else {
                  return Text("${snapshot.error}");
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
