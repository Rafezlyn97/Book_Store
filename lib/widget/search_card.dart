import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    Key? key,
    required this.color,
    required this.image,
    required this.title,
  }) : super(key: key);
  final Color color;
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimension.height10),
      child: Container(
        height: Dimension.height200,
        width: Dimension.height170,
        decoration: BoxDecoration(
          color: color, //here
          borderRadius: BorderRadius.circular(Dimension.radius20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: Dimension.height10,
                bottom: Dimension.height10,
                left: Dimension.height05,
                right: Dimension.height05,
              ),
              child: SmallText(
                text: title,
                size: Dimension.font15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              height: Dimension.height120,
              width: Dimension.height80,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(97, 0, 0, 0),
                    blurRadius: 10.0,
                    offset: Offset(
                      1.0,
                      5.0,
                    ),
                  ),
                ],
                borderRadius: BorderRadius.circular(Dimension.radius15),
                image: DecorationImage(image: AssetImage(image)), //here
              ),
            )
          ],
        ),
      ),
    );
  }
}
