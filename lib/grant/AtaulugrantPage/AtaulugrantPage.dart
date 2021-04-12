import 'dart:async';

import 'package:Igrants/drawer/drawer.dart';
import 'package:Igrants/grant/AtaulugrantPage/AtaulugrantPagedb.dart';

import 'package:Igrants/university/universitet_about.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import 'AtaulugrantPage_basy.dart';


import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/widgets.dart';

class AtaulugrantPage extends StatefulWidget {
  final String dbName;

  const AtaulugrantPage ({Key key, this.dbName}) : super(key: key);

  @override
  _AtaulugrantPageState createState() => _AtaulugrantPageState();
}

class _AtaulugrantPageState extends State<AtaulugrantPage > {
  final podcasts = <Grantdb>[];
  List<Grantdb> _podcastListNew;
  final FirebaseDatabase _database = FirebaseDatabase.instance;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StreamSubscription<Event> _onPodcastAddedSubscription;
  StreamSubscription<Event> _onPodcastChangedSubscription;
  Query _podcastQuery;

  @override
  void initState() {
    super.initState();

    _podcastListNew = new List();
    _podcastQuery = _database.reference().child("atauli_grant_list");

    _onPodcastAddedSubscription =
        _podcastQuery.onChildAdded.listen(onEntryAdded);
    _onPodcastChangedSubscription =
        _podcastQuery.onChildChanged.listen(onEntryChanged);
  }

  onEntryAdded(Event event) {
    setState(() {
      _podcastListNew.add(Grantdb.fromSnapshot(event.snapshot));
    });
  }
  onEntryChanged(Event event) {
    print('onEntryChanged');

    var oldEntry = _podcastListNew.singleWhere((entry) {
      return entry.key == event.snapshot.key;
    });

    setState(() {
      Grantdb.fromSnapshot(event.snapshot);
    });
  }

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
          'Атаулы Грант',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) =>  IconButton(
            icon: Icon(Icons.arrow_back_ios,
                color: Colors.black87,
                size: width/15),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [],
      ),
      body: Column(


        children: [

          Padding(
            padding:
            const EdgeInsets.only(top: 15, bottom: 10, left: 20, right: 20),
            child: Ataulygranbasy(),
          ),
          Padding(
            padding:
            const EdgeInsets.only( left: 20, right: 20),

          ),
          Expanded(
            child: Container(
              height: 12,
              child: ListView.builder(
                  shrinkWrap: true,
                  // scrollDirection: Axis.vertical,
                  itemCount: _podcastListNew.length,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  itemBuilder: (context, i) {
                    return podcastItem(context, _podcastListNew[i]);
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Widget podcastItem(BuildContext context, Grantdb grantdb) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    print(width);
    return   Container(child: Text(grantdb.univerCode));
  }
}
