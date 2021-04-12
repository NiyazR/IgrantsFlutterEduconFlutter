import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:like_button/like_button.dart';

import 'dart:ui';

import 'newsdb.dart';

import 'dart:ui';

import 'newsdb.dart';

class News_aboutt extends StatelessWidget {
  final Newsdb newsdb;

  News_aboutt({Key key, @required this.newsdb}) : super(key: key);

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
        body: ListView(
          children: [ Column(
            children: [

              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios,
                          color: Colors.black87,
                          size: width/10),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      newsdb.news_title,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                          fontSize: width / 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),



                    Text(
                      newsdb.news_date,
                      style:
                          TextStyle(color: Colors.black54, fontSize: width / 25),
                    ),



                  ],
                ),
              ),


              SizedBox(
                height: 20,
              ),
              FadeInImage.assetNetwork(
                  placeholder: 'assets/news_placeholder.png',
                  width: width/1.5,
                  height: width/2,
                  image:newsdb.news_img
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Text(
                  newsdb.news_desc,
                  style:
                  TextStyle(color: Colors.black87, fontSize: width / 25),
                ),
              ),
              SizedBox(
                height: 20,
              ),



              Padding(
                padding: const EdgeInsets.only(left: 100,right: 100),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LikeButton(
                      size: 40,
                      circleColor:
                      CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Color(0xff33b5e5),
                        dotSecondaryColor: Color(0xff0099cc),
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.thumb_up_alt_outlined ,
                          color: isLiked ? Colors.deepPurpleAccent : Colors.black87,
                          size: 30,
                        );
                      },
                      likeCount: 0,
                      countBuilder: (int count, bool isLiked, String text) {
                        var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                        Widget result;
                        if (count == 0) {
                          result = Text(
                            "",
                            style: TextStyle(color: color),
                          );
                        } else
                          result = Text(
                            text,
                            style: TextStyle(color: color),
                          );
                        return result;
                      },
                    ),
                    LikeButton(
                      size: 40,
                      circleColor:
                      CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Color(0xff33b5e5),
                        dotSecondaryColor: Color(0xff0099cc),
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.thumb_down_alt_outlined ,
                          color: isLiked ? Colors.deepPurpleAccent : Colors.black87,
                          size: 30,
                        );
                      },
                      likeCount: 0,
                      countBuilder: (int count, bool isLiked, String text) {
                        var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                        Widget result;
                        if (count == 0) {
                          result = Text(
                            "",
                            style: TextStyle(color: color),
                          );
                        } else
                          result = Text(
                            text,
                            style: TextStyle(color: color),
                          );
                        return result;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),




            ],

          ),
    ],
        ),

      ),
    );
  }
}
