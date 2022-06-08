// import 'dart:async';
// import 'dart:convert';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter_application_1/constant/dimension.dart';
// import 'package:flutter_application_1/widget/small_text.dart';
// import 'package:http/http.dart' as http;

// class Features {
//   Features({
//     required this.image,
//     required this.title,
//     required this.author,
//     this.rating = 0.0,
//     required this.id,
//   });

//   final String id;
//   final String image;
//   final String title;
//   final String author;
//   double rating;

//   factory Features.fromJson(Map<String, dynamic> json) {
//     return Features(
//       id: json['id'],
//       title: json['title'],
//       author: json['author'],
//       image: json['image'],
//       rating: json['rating'] != null ? double.parse(json['rating']) : 0.0,
//     );
//   }
// }

// Future<List<Features>> fetchFeatures() async {
//   final response = await http
//       .get(Uri.parse('https://629f0b33461f8173e4defbcb.mockapi.io/books'));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     return [
//       for (final item in jsonDecode(response.body)) Features.fromJson(item),
//     ];
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.s
//     throw Exception('Failed to load album');
//   }
// }

// class FeatureB extends StatefulWidget {
//   @override
//   State<FeatureB> createState() => _FeatureBState();
// }

// class _FeatureBState extends State<FeatureB> {
//   late Future<List<Features>> futureFeatures;

//   @override
//   void initState() {
//     super.initState();
//     futureFeatures = fetchFeatures();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<Features>>(
//       future: futureFeatures,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return Column(
//             children: [
//               CarouselSlider(
//                 items: [
//                   SizedBox(
//                     height: Dimension.height350,
//                     child: ListView.builder(
//                       itemBuilder: (context, index) {
//                         return GestureDetector(
//                           onTap: () {},
//                           child: Column(
//                             children: [
//                               Container(
//                                 height: Dimension.height200,
//                                 width: Dimension.width140,
//                                 decoration: BoxDecoration(
//                                   borderRadius:
//                                       BorderRadius.circular(Dimension.radius20),
//                                   boxShadow: const [
//                                     BoxShadow(
//                                       color: Colors.black54,
//                                       blurRadius: 5.0,
//                                       offset: Offset(0, 5),
//                                     ),
//                                   ],
//                                   image: DecorationImage(
//                                     image:
//                                         AssetImage(snapshot.data![index].image),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.all(Dimension.height05),
//                                 child: SmallText(
//                                   text: snapshot.data![index].title,
//                                   color: Colors.black,
//                                   size: Dimension.font12,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SmallText(
//                                 text: snapshot.data![index].author,
//                                 size: Dimension.font10,
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//                 options: CarouselOptions(
//                   viewportFraction: 0.5,
//                   height: Dimension.height350,
//                   enlargeCenterPage: true,
//                   initialPage: 1,
//                 ),
//               ),
//             ],
//           );
//         } else {
//           return Text("${snapshot.error}");
//         }
//       },
//     );
//   }
// }
