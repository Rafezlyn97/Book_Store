class RecentlyView {
  final String image;
  final String title;
  final String author;
  double rating;

  RecentlyView({
    required this.author,
    required this.image,
    required this.title,
    this.rating = 0.0,
  });
}
