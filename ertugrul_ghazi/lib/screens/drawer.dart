import 'package:ertugrul_ghazi/data/list_data.dart';
import 'package:ertugrul_ghazi/widgets/default_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category_image_screen.dart';

Widget drawerWidget() {
  return SingleChildScrollView(
    child: Container(
      width: 250,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 270,
            width: 180,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("images/splash.png"), fit: BoxFit.fill),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Divider(
              thickness: 1,
              color: Colors.black,
              height: 4,
            ),
          ),
          Text(
            "Categories",
            style: TextStyle(
              color: Colors.black,
              height: 2,
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
          listView(),
          DefaultButton(
            text: "Privacy Policy",
            press: () {},
          ),
          SizedBox(
            height: 10,
          ),
          DefaultButton(
            text: "About Us",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ),
  );
}

Widget listView() {
  List imageList;
  return Padding(
    padding: EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 15),
    child: Container(
      alignment: Alignment.centerLeft,
      child: ListView.builder(
        itemCount: category_names.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (category_names[index]["name"] == "ErtugrulGhazi") {
                imageList = ErtugrulGhazi;
              } else if (category_names[index]["name"] == "Season1") {
                imageList = Season1;
              } else if (category_names[index]["name"] == "Season2") {
                imageList = Season2;
              } else if (category_names[index]["name"] == "Season3") {
                imageList = Season3;
              } else if (category_names[index]["name"] == "Season4") {
                imageList = Season4;
              }
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryImageScreen(
                    categoryName: category_names[index]["name"],
                    imageList: imageList,
                  ),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 4, left: 7),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(category_names[index]["image"]),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        category_names[index]["name"],
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
