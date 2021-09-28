import 'package:flutter/material.dart';
class CompleteImageScreen extends StatelessWidget {
  final String imageUrl;

  const CompleteImageScreen({Key key, this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.fill
          ),
        ),
      ),
    );
  }
}
