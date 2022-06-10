import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Book {
  Book({
    required this.id,
    required this.image,
    required this.author,
    required this.title,
    this.rating = 0.0,
    this.category = "",
  });

  final String image;
  final String title;
  final String author;
  double rating;
  final String id;
  String category;

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      image: json['image'],
      category: json['category'],
      rating: json['rating'] != null ? double.parse(json['rating']) : 0.0,
    );
  }
}

Future<List<Book>> fetchBook() async {
  final response = await http
      .get(Uri.parse('https://629f0b33461f8173e4defbcb.mockapi.io/books'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return [
      for (final item in jsonDecode(response.body)) Book.fromJson(item),
    ];
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
