class BestSell {
  BestSell({
    required this.image,
    required this.author,
    required this.title,
    this.rating = 0.0,
  });

  final String image;
  final String title;
  final String author;
  double rating;
}
