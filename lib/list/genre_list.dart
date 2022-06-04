import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/model/genres_model.dart';

class GenreList {
  static List<Genres> genres = [
    Genres(
      images: "images/Genres/genres.png",
      category: "Graphics Novel",
      color: AppColor.bgColor2,
    ),
    Genres(
      images: "images/Genres/genres.png",
      category: "Graphics Novel",
      color: AppColor.bgColor1,
    ),
  ];
}
