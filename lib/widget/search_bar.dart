import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimension.height05,
            vertical: Dimension.height05,
          ),
          child: Container(
            height: Dimension.height56,
            width: Dimension.width335,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5.0,
                  offset: Offset(5, 0),
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5.0,
                  offset: Offset(-5, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(Dimension.radius20),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimension.height10,
                vertical: Dimension.height05,
              ),
              child: TextField(
                //controller: controller,
                onChanged: (value) {},
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: AppColor.TextColor,
                  ),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.sort),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
