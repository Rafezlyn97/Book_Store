import 'package:flutter_application_1/model/recentview_model.dart';

class RecentViewList {
  static List<RecentlyView> recentView = [
    RecentlyView(
      image: 'images/RecentlyViewed/3.jpg',
      title: 'The Fatal Tree',
      author: 'Jake Arnott',
      rating: 2.5,
    ),
    RecentlyView(
      image: 'images/RecentlyViewed/1.jpg',
      title: 'Door to Door',
      author: 'Edward Humes',
      rating: 3.7,
    ),
    RecentlyView(
      image: 'images/RecentlyViewed/2.jpg',
      title: 'Day Four',
      author: 'Sarah Lotz',
      rating: 4.5,
    ),
  ];
}
