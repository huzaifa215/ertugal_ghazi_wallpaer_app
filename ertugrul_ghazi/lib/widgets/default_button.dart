import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;

  const DefaultButton({Key key, this.text, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        height: 46,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.grey.shade800,
          onPressed: press,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
