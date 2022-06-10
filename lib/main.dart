import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/page/bording_page.dart';
import 'package:flutter_application_1/page/home.dart';
import 'package:flutter_application_1/page/search.dart';
import 'package:flutter_application_1/page/search_menu.dart';
import 'package:flutter_application_1/page/sign_in.dart';
import 'package:flutter_application_1/page/sign_up.dart';
import 'package:flutter_application_1/widget/filter_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Grocer book store assignment',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: AppColor.mainColor,
        ),
        drawerTheme: const DrawerThemeData(backgroundColor: Color(0xffF2F2F2)),
        scaffoldBackgroundColor: Colors.white,
        iconTheme: IconThemeData(color: AppColor.mainColor),
      ),
      home: const HomePage(),
    );
  }
}
