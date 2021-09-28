import 'package:ertugrul_ghazi/data/list_data.dart';
import 'package:flutter/material.dart';

class GridImagesWidget extends StatelessWidget {
  final List listname;

  const GridImagesWidget({Key key, this.listname}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Expanded(
      flex: 3,
      child: GridView.builder(
          padding: EdgeInsets.all(5),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 0.1,
            mainAxisExtent: 310,
          ),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount:listname.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: 180,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(listname[index]),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
              ],
            );
          }
      ),
    );
  }
}
