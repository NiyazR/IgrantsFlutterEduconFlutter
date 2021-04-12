import 'SerpingrantPage/SerpingrantPage.dart';
import 'ZhalpygrantPage/ZhalpygrantPage.dart';
import 'file:///C:/Users/User/Desktop/igran/lib/grant/AtaulugrantPage/AtaulugrantPage.dart';
import 'package:Igrants/Mamandyktar/Mamndyktar.dart';



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:Igrants/drawer/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class GrantScreen extends StatefulWidget {
  @override
  _GrantScreenState createState() => _GrantScreenState();
}

class _GrantScreenState extends State<GrantScreen> {
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
          'Гранттар',
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
              }),
        ),
        actions: [],
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: width/1,
                height: height /6,
                child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.white,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Жалпы грант',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: width / 18)),
                        ),
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZtBWA3RPz3Zz0rNvzNoqonfgrgmmBftXs6g&usqp=CAU',
                        ),
                      ],
                    ),
                    textColor: Colors.black,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => ZhalpygrantPage()));
                    }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: width/1,
                height: height /6,
                child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.white,
                    color: Colors.white,
                    child: Row(

                      children: [
                        Container(width: width/2.5,
                          child: Image.network(
                            'https://image.freepik.com/free-vector/isometric-concept-illustration-online-shopping_32192-211.jpg',
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Container(width: width/4,
                              child: Text('Атаулы грант',

                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: width / 20)),
                            ),
                          ),
                        ),

                      ],
                    ),
                    textColor: Colors.black,
                    padding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => AtaulugrantPage()));
                  },),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: width/1,
                height: height /6,
                child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.white,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SingleChildScrollView(scrollDirection: Axis.vertical,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SingleChildScrollView(scrollDirection: Axis.vertical,
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Ректор грант',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width / 18)),
                                  Text('(ішкі грант)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width / 18)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZtBWA3RPz3Zz0rNvzNoqonfgrgmmBftXs6g&usqp=CAU',
                        ),
                      ],
                    ),
                    textColor: Colors.black,
                    padding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: () async {
                      const url = 'http://profonline.kz/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                      ;
                    }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: width/1,
                height: height /6,
                child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.white,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          'https://image.freepik.com/free-vector/isometric-concept-illustration-online-shopping_32192-211.jpg',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Серпін',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: width / 18)),
                        ),

                      ],
                    ),
                    textColor: Colors.black,
                    padding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SerpingrantPage()));
                  },),
              ),
            ),
            SizedBox(
              height: 20,
            ),



          ],
        ),
      ),
    );
  }
}
