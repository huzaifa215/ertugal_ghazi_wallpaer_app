import 'package:ertugrul_ghazi/data/list_data.dart';
import 'package:ertugrul_ghazi/widgets/app_bar_widget.dart';
import 'package:ertugrul_ghazi/widgets/grid_images_widget.dart';
import 'package:flutter/material.dart';

class CategoryImageScreen extends StatelessWidget {
  final String categoryName;
  final List imageList;

  // @override
  // void initState() {
  //   if (categoryName == "ErtugrulGhazi") {
  //     imageList = ErtugrulGhazi;
  //   } else if (categoryName == "Season1") {
  //     imageList = Season1;
  //   } else if (categoryName == "Season2") {
  //     imageList = Season2;
  //   } else if (categoryName == "Season3") {
  //     imageList = Season3;
  //   } else if (categoryName == "Season4") {
  //     imageList = Season4;
  //   }
  // }

  CategoryImageScreen({Key key, this.categoryName, this.imageList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: categoryName),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          GridImagesWidget(
            listname: imageList,
          ),
        ],
      ),
    );
  }
}
