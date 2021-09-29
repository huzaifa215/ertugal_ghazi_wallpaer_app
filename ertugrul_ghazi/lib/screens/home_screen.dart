import 'package:ertugrul_ghazi/data/list_data.dart';
import 'package:ertugrul_ghazi/screens/category_image_screen.dart';
import 'package:ertugrul_ghazi/screens/drawer.dart';
import 'package:ertugrul_ghazi/widgets/app_bar_widget.dart';
import 'package:ertugrul_ghazi/widgets/grid_images_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List imageList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerWidget(),
      appBar: AppBarWidget(title: "Home Screen"),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: category_names.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (category_names[index]["name"]== "ErtugrulGhazi") {
                    imageList = ErtugrulGhazi;
                  } else if (category_names[index]["name"]== "Season1") {
                    imageList = Season1;
                  } else if (category_names[index]["name"] == "Season2") {
                    imageList = Season2;
                  } else if (category_names[index]["name"] == "Season3") {
                    imageList = Season3;
                  } else if (category_names[index]["name"]== "Season4") {
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
                  children: [
                    Container(
                      width: 110,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(category_names[index]["image"]),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Text(
                      category_names[index]["name"],
                      style: TextStyle(
                        fontSize: 13.0,
                        height: 3,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          ),
          GridImagesWidget(
            listname: Season1,
          )
        ],
      ),
    );
  }
}
