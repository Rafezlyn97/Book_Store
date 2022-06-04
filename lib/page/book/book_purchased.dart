import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';

class UserPurchased extends StatelessWidget {
  const UserPurchased({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: Dimension.height200,
          width: Dimension.width140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimension.radius20),
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
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
