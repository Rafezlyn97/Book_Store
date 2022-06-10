import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/model/book_model.dart';
import 'package:flutter_application_1/page/details/book_details.dart';
import 'package:flutter_application_1/widget/nav_bar.dart';
import 'package:flutter_application_1/widget/search_bar.dart';
import 'package:flutter_application_1/widget/search_option.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class SearchMainPage extends StatefulWidget {
  const SearchMainPage({Key? key}) : super(key: key);

  @override
  State<SearchMainPage> createState() => _SearchMainPageState();
}

class _SearchMainPageState extends State<SearchMainPage> {
  late Future<List<Book>> futureBook;

  @override
  void initState() {
    super.initState();
    futureBook = fetchBook();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //endDrawer: const NavBar(),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: Dimension.height10),
              child: const SearchBar(),
            ),
            const SearchOption(),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(Dimension.height30),
                child: FutureBuilder<List<Book>>(
                  future: futureBook,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: Dimension.height20,
                          crossAxisSpacing: Dimension.height20,
                        ),
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookDetails(
                                        bookModel: snapshot.data![index])),
                              );
                            },
                            child: Container(
                              height: Dimension.height200,
                              width: Dimension.height170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 5.0,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.circular(Dimension.radius20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
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
                                      borderRadius: BorderRadius.circular(
                                          Dimension.radius15),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            snapshot.data![index].image),
                                      ), //here
                                    ),
                                  ),
                                  SizedBox(
                                    width: Dimension.width140,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: Dimension.height05,
                                          top: Dimension.height10),
                                      child: SmallText(
                                        overflow: TextOverflow.clip,
                                        text: snapshot.data![index].title,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      return SmallText(text: "No Data Found");
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
