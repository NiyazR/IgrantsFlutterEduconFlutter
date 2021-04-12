import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter/widgets.dart';
import 'dart:ui';

import 'package:Igrants/drawer/drawer.dart';



class MamndyktarPage extends StatefulWidget {
  @override
  _MamndyktarPageState createState() => _MamndyktarPageState();
}

class _MamndyktarPageState extends State<MamndyktarPage> {
  final List<Map<String, String>> popular = [
    {
      'img': 'assets/Screenshot_4-removebg-preview.png',
      "name": 'Математика-география',
      "number": '19'
    },
    {
      'img': 'assets/Screenshot_3-removebg-preview.png',
      "name": 'Биология-география',
      "number": '25'
    },
    {
      'img': 'assets/Screenshot_4-removebg-preview.png',
      "name": 'География-шет тілі',
      "number": '12'
    },
    {
      'img': 'assets/Screenshot_3-removebg-preview.png',
      "name": 'География-шет тілі',
      "number": '15'
    },
    {
      'img': 'assets/Screenshot_4-removebg-preview.png',
      "name": 'Биология-география',
      "number": '16'
    },
    {
      'img': 'assets/Screenshot_3-removebg-preview.png',
      "name": 'География-шет тілі',
      "number": '17'
    },
    {
      'img': 'assets/Screenshot_4-removebg-preview.png',
      "name": 'island',
      "number": '39'
    },
    {
      'img': 'assets/Screenshot_3-removebg-preview.png',
      "name": 'Биология-география',
      "number": '43'
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    print(width);

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text(
          'Мамандықтар',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DrawerMenu()),
                );
              }
          ),
        ),
        actions: [],
      ),
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                  height: 10,
                ),
                StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  crossAxisCount: 4,
                  itemCount: popular.length,
                  itemBuilder: (BuildContext context, int index) => Stack(
                    children: [
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        highlightElevation: 20.0,
                        onPressed: () async {

                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                popular[index]['name'],  maxLines: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: width / 30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.school,
                                    color: Colors.black,
                                    size: width/20,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Text(
                                      popular[index]['number'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: width/25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ClipRRect(
                              child: Image.asset(popular[index]['img']),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  staggeredTileBuilder: (int index) =>
                  new StaggeredTile.fit(2),
                  mainAxisSpacing: width/20,
                  crossAxisSpacing: width/15,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),



    );
  }
}


