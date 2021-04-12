import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:like_button/like_button.dart';

import 'Mamndyktardb.dart';

import 'dart:ui';

import 'Mamndyktardb.dart';

class Mamandyk_about extends StatelessWidget {
  final Mamndyktardb mamndyktardb;

  Mamandyk_about ({Key key, @required this.mamndyktardb}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    print(width);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:





              Text(
               mamndyktardb.count,



          ),



      ),
    );
  }
}
