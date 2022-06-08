import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/page/search.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Filter',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 20.0, right: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancle',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 19.0, vertical: 10.0),
              child: Text(
                'Sort by',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ),
            Column(
              children: [
                RadioListTile(
                  value: 0,
                  activeColor: AppColor.mainColor,
                  title: Text('Featured Titles'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 0;
                    });
                  },
                ),
                RadioListTile(
                  value: 1,
                  activeColor: AppColor.mainColor,
                  title: Text('Price: Low to High'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 1;
                    });
                  },
                ),
                RadioListTile(
                  value: 2,
                  activeColor: AppColor.mainColor,
                  title: Text('Price: High to Low'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 2;
                    });
                  },
                ),
                RadioListTile(
                  value: 3,
                  activeColor: AppColor.mainColor,
                  title: Text('Publication Date'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 3;
                    });
                  },
                ),
                RadioListTile(
                  value: 4,
                  activeColor: AppColor.mainColor,
                  title: Text('A-Z'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 4;
                    });
                  },
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 19.0, vertical: 10.0),
              child: Text(
                'Genre',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ),
            Column(
              children: [
                RadioListTile(
                  value: 5,
                  activeColor: AppColor.mainColor,
                  title: Text('Biography'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 5;
                    });
                  },
                ),
                RadioListTile(
                  value: 6,
                  activeColor: AppColor.mainColor,
                  title: Text('Business & Economics'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 6;
                    });
                  },
                ),
                RadioListTile(
                  value: 7,
                  activeColor: AppColor.mainColor,
                  title: Text('Children'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 7;
                    });
                  },
                ),
                RadioListTile(
                  value: 8,
                  activeColor: AppColor.mainColor,
                  title: Text('Cookery'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 8;
                    });
                  },
                ),
                RadioListTile(
                  value: 9,
                  activeColor: AppColor.mainColor,
                  title: Text('Fiction'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 9;
                    });
                  },
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 19.0, vertical: 10.0),
              child: Text(
                'Average Customer Review',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ),
            Column(
              children: [
                RadioListTile(
                  value: 10,
                  activeColor: AppColor.mainColor,
                  title: Text('5 Star'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 10;
                    });
                  },
                ),
                RadioListTile(
                  value: 11,
                  activeColor: AppColor.mainColor,
                  title: Text('4 Star'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 12;
                    });
                  },
                ),
                RadioListTile(
                  value: 13,
                  activeColor: AppColor.mainColor,
                  title: Text('3 Star'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 13;
                    });
                  },
                ),
                RadioListTile(
                  value: 14,
                  activeColor: AppColor.mainColor,
                  title: Text('2 Star'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 14;
                    });
                  },
                ),
                RadioListTile(
                  value: 15,
                  activeColor: AppColor.mainColor,
                  title: Text('0-1 Star'),
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = 15;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
