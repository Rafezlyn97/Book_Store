import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/list/genre_list.dart';
import 'package:flutter_application_1/model/genres_model.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class GenresBook extends StatefulWidget {
  const GenresBook({
    Key? key,
  }) : super(key: key);

  @override
  State<GenresBook> createState() => _GenresBookState();
}

class _GenresBookState extends State<GenresBook> {
  List<Genres> genres = GenreList.genres;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Dimension.height15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
            text: "Genres",
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: Dimension.height20,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Dimension.height200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimension.height15),
                        child: Container(
                          height: Dimension.height200,
                          width: Dimension.height278,
                          decoration: BoxDecoration(
                            color: genres[index].color,
                            borderRadius:
                                BorderRadius.circular(Dimension.radius20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: Dimension.height120,
                                width: Dimension.height200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(genres[index].images),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: Dimension.height10,
                                ),
                                child: SmallText(
                                  text: genres[index].category,
                                  color: Colors.white,
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
            ),
          ),
        ],
      ),
    );
  }
}
