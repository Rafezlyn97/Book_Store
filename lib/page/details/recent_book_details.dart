import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/model/recentview_model.dart';
import 'package:flutter_application_1/page/home.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/icon_text.dart';
import 'package:flutter_application_1/widget/nav_bar.dart';
import 'package:flutter_application_1/widget/rounded_button.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RecentlyViewDetails extends StatelessWidget {
  final RecentlyView recentViewModel;

  const RecentlyViewDetails({Key? key, required this.recentViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
      ),
      endDrawer: const NavBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimension.height20,
                      vertical: Dimension.height20),
                  child: Container(
                    height: Dimension.height170,
                    width: Dimension.height120,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black45,
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                            blurStyle: BlurStyle.solid),
                      ],
                      borderRadius: BorderRadius.circular(Dimension.radius15),
                      image: DecorationImage(
                        image: AssetImage(recentViewModel.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: recentViewModel.title,
                      fontWeight: FontWeight.bold,
                      size: 20,
                      align: TextAlign.justify,
                    ),
                    SizedBox(
                      height: Dimension.height05,
                    ),
                    SmallText(
                      text: recentViewModel.author,
                      size: Dimension.font12,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: Dimension.height20),
                          child: SmoothStarRating(
                            color: AppColor.mainColor,
                            borderColor: AppColor.mainColor,
                            rating: recentViewModel.rating,
                            isReadOnly: false,
                            size: 15.0,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            starCount: 5,
                            allowHalfRating: true,
                            spacing: 2.0,
                            onRated: (value) {},
                          ),
                        ),
                        SizedBox(
                          width: Dimension.height10,
                        ),
                        SmallText(
                          text: recentViewModel.rating.toString(),
                          size: Dimension.font12,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconAndText(
                          icon: Icons.favorite,
                          size: Dimension.font18,
                          color: AppColor.bgColor1,
                          text: "likes",
                        ),
                        SizedBox(
                          width: Dimension.font30,
                        ),
                        IconAndText(
                          icon: Icons.comment,
                          size: Dimension.font18,
                          color: AppColor.mainColor,
                          text: "200 comments",
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: Dimension.height05,
            ),
            const Divider(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimension.height20,
                vertical: Dimension.height10,
              ),
              child: BigText(
                text: "About",
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
                padding: EdgeInsets.all(Dimension.height15),
                child: SmallText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est consectetur etiam mauris posuere in enim etiam sed urna. Lacus nisl, feugiat lectus viverra accumsan consectetur mauris, non. Neque semper sit hendrerit laoreet ullamcorper posuere at odio. Integer massa senectus malesuada tristique in pulvinar vel. Id gravida eros mattis sed et. Sollicitudin augue molestie lectus interdum sed mauris et arcu. Aliquam sagittis, egestas orci et ullamcorper dignissim pellentesque sed. Elit nec aliquet tortor, vel dui volutpat curabitur ac. Risus congue penatibus diam fringilla. Egestas et tempor integer ligula id velit fermentum vitae. Cras felis sit ornare massa sit. Mauris, dignissim ultrices nisi tincidunt diam, mattis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est consectetur etiam mauris posuere in enim etiam sed urna. Lacus nisl, feugiat lectus viverra accumsan consectetur mauris, non. Neque semper sit hendrerit laoreet ullamcorper posuere at odio. Integer massa senectus malesuada tristique in pulvinar vel. Id gravida eros mattis sed et. Sollicitudin augue molestie lectus interdum sed mauris et arcu. Aliquam sagittis, egestas orci et ullamcorper dignissim pellentesque sed. Elit nec aliquet tortor, vel dui volutpat curabitur ac. ",
                  overflow: TextOverflow.visible,
                  align: TextAlign.justify,
                )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RoundedButton(
                  onPress: () {},
                  text: "Read Now",
                  width: Dimension.height250,
                ),
                RoundedButton(
                  onPress: () {},
                  text: "Add to Cart",
                  width: Dimension.height250,
                  color: AppColor.bgColor4,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
