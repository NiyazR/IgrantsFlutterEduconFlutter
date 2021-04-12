import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:like_button/like_button.dart';
import 'package:url_launcher/url_launcher.dart';

import 'universitydb.dart';
import 'university.dart';
import 'dart:ui';
import 'university_basy.dart';

class Universitet_about extends StatelessWidget {
  final Universitydb universitydb;

  Universitet_about({Key key, @required this.universitydb}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    print(width);

    return Scaffold(


      body: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: width / 1.8,
              child: Container(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                  child: Container(
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage( universitydb.univerImage),
                        fit: BoxFit.cover)


                ),
              ),
            ),
            Container(
              child: ListView(
                children: [

                  SizedBox(height: 130),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      width: width / 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Card(
                          elevation: 7.0,
                          shadowColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: width / 1.9,
                                      child: Text(universitydb.univerName,
                                          style:
                                              TextStyle(fontSize: width / 25)),
                                    ),
                                    Text(universitydb.univerCode,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: width / 25)),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 8),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.black,
                                            size: width / 20,
                                          ),
                                          Container(
                                              margin: EdgeInsets.only(left: 8),
                                              child: Text(
                                                universitydb.univerLocation,
                                                maxLines: 2,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: width / 30),
                                              )),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.call,
                                            color: Colors.black,
                                            size: width / 20,
                                          ),
                                          Container(
                                              margin: EdgeInsets.only(left: 8),
                                              child: Text(
                                                universitydb.univerPhone,
                                                maxLines: 2,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: width / 30),
                                              )),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      width: width / 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Card(
                          elevation: 7.0,
                          shadowColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 15,bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: width / 1.9,
                                      child: Text(universitydb.univerName,
                                          style:
                                          TextStyle(fontSize: width / 25)),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      width: width / 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Card(
                          elevation: 7.0,
                         
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey[300].withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 15,bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: width / 1.9,
                                      child: Text(universitydb.professions,
                                          style:
                                          TextStyle(fontSize: width / 25)),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Column(
              children: [
                Container( margin: EdgeInsets.only(left: width/20, top:width/20),
                  child: Builder(
                    builder: (context) =>  IconButton(
                      icon: Icon(Icons.arrow_back_ios,
                          color: Colors.white,
                          size: width/10),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
