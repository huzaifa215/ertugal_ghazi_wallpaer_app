import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget AppBarWidget({String title}) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    elevation: 2.0,
  );
}
