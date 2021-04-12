import 'package:Igrants/DemoPages/demosanau.dart';
import 'package:Igrants/Mamandyktar/Mamndyktar.dart';
import 'package:Igrants/News/news.dart';
import 'package:Igrants/grant/grant.dart';

import 'package:Igrants/university/university.dart';
import 'package:Igrants/university/university_basy.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  Widget CreateElements() {

  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.3, 0.7, 0.9],
              colors: [
                Colors.pinkAccent[200].withOpacity(0.8),
                Colors.indigoAccent[200].withOpacity(0.8),
                Colors.lightBlue[600].withOpacity(0.8),

                Colors.lightBlue[300].withOpacity(0.8),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                ListTile(
                  onTap: () {},
                  leading: IconButton(
                    iconSize: 45,
                    icon: new Icon(Icons.close),
                    color: Colors.black,
                    onPressed: () => Navigator.of(context).pop(null),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(children: [
                    Center(
                      child: SizedBox(
                        height: 50.0,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) => NewsPage() ));
                      },
                      leading: Icon(
                        Icons.language,
                        color: Colors.black,
                      ),
                      title: Text("Жаңалықтар",style: TextStyle(color: Colors.black87),),
                    ),
                    ListTile(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) => MamndyktarPage() ));
                      },
                      leading: Icon(
                        Icons.school,
                        color: Colors.black,
                      ),
                      title: Text("Мамандықтар",style: TextStyle(color: Colors.black87),),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) =>  GrantScreen() ));
                      },
                      leading: Icon(
                        Icons.emoji_events_outlined,
                        color: Colors.black,
                      ),
                      title: Text("Гранттар",style: TextStyle(color: Colors.black87),),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) => UniversityPage() ));
                      },
                      leading: Icon(
                        Icons.map,
                        color: Colors.black,
                      ),
                      title: Text("Университеттер ",style: TextStyle(color: Colors.black87),),
                    ),
                  ]),
                ),
              ],
            ),
          )
      ),
    );

  }
}




