import 'dart:async';
import 'dart:math';
import 'package:Igrants/Mamandyktar/Mamndyktar_about.dart';
import 'package:Igrants/drawer/drawer.dart';
import 'package:Igrants/university/universitet_about.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:like_button/like_button.dart';
import 'dart:ui';

import 'news_about.dart';
import 'newsdb.dart';


class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<Newsdb> _angimeListNew;
  final FirebaseDatabase _database = FirebaseDatabase.instance;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StreamSubscription<Event> _onHobbyAddedSubscription;
  StreamSubscription<Event> _onHobbyChangedSubscription;
  Query _angimeQuery;

  @override
  void initState() {
    super.initState();

    _angimeListNew = new List();
    _angimeQuery = _database.reference().child("news");

    _onHobbyAddedSubscription = _angimeQuery.onChildAdded.listen(onEntryAdded);
    _onHobbyChangedSubscription =
        _angimeQuery.onChildChanged.listen(onEntryChanged);
  }

  onEntryAdded(Event event) {
    print('onEntryAdded');

    setState(() {
      _angimeListNew.add(Newsdb.fromSnapshot(event.snapshot));
    });
  }

  onEntryChanged(Event event) {
    print('onEntryChanged');

    var oldEntry = _angimeListNew.singleWhere((entry) {
      return entry.key == event.snapshot.key;
    });

    setState(() {
      _angimeListNew[_angimeListNew.indexOf(oldEntry)] =
          Newsdb.fromSnapshot(event.snapshot);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    print(width);

    return Container(
        child: Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            drawer: DrawerMenu(),
            appBar: AppBar(
              title: Text(
                "Жаңалықтар",
                style: TextStyle(color: Colors.black, fontSize: width / 20),
              ),
              actions: <Widget>[],
              //<Widget>[]
              backgroundColor: Colors.white,
              elevation: 50.0,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: new Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              //IconButton
              brightness: Brightness.dark,
            ),
            body: Container(
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _angimeListNew.length,
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  itemBuilder: (context, i) {
                    return angimeItem(context, _angimeListNew[i]);
                  }),
            )));
  }

  Widget angimeItem(BuildContext context, Newsdb newsDb) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    print(width);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child:  Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Container(
            width: width ,
            height: height / 7,
            child: RaisedButton(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                highlightElevation: 20.0,
                hoverColor: Colors.white,
                color: Colors.deepPurple.withOpacity(0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                 Container(width: width/1.5,
                        child: Text(newsDb.news_title,maxLines: 2,
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: width / 25)),
                      ),


                   Container(width: width/1.5,
                        child: Text(newsDb.news_date,maxLines: 2,
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: width / 30)),
                      ),






                  ],
                ),
                textColor: Colors.black,
                padding:
                EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                disabledTextColor: Colors.black,
                disabledColor: Colors.grey,
                onPressed: () async{
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            News_aboutt(newsdb: newsDb)),
                  );
                },)
          ),
        ),
      ),
    );
  }
}
