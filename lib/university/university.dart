import 'dart:async';
import 'package:Igrants/drawer/drawer.dart';
import 'package:Igrants/university/universitet_about.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'university_basy.dart';
import 'universitydb.dart';
import 'package:flutter/widgets.dart';

class UniversityPage extends StatefulWidget {
  final String dbName;

  const UniversityPage({Key key, this.dbName}) : super(key: key);

  @override
  _UniversityPageState createState() => _UniversityPageState();
}

class _UniversityPageState extends State<UniversityPage> {
  final podcasts = <Universitydb>[];
  List<Universitydb> _podcastListNew;
  final FirebaseDatabase _database = FirebaseDatabase.instance;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StreamSubscription<Event> _onPodcastAddedSubscription;
  StreamSubscription<Event> _onPodcastChangedSubscription;
  Query _podcastQuery;

  @override
  void initState() {
    super.initState();

    _podcastListNew = new List();
    _podcastQuery = _database.reference().child("univer_list");

    _onPodcastAddedSubscription =
        _podcastQuery.onChildAdded.listen(onEntryAdded);
    _onPodcastChangedSubscription =
        _podcastQuery.onChildChanged.listen(onEntryChanged);
  }

  onEntryAdded(Event event) {
    setState(() {
      _podcastListNew.add(Universitydb.fromSnapshot(event.snapshot));
    });
  }

  onEntryChanged(Event event) {
    print('onEntryChanged');

    var oldEntry = _podcastListNew.singleWhere((entry) {
      return entry.key == event.snapshot.key;
    });

    setState(() {
      Universitydb.fromSnapshot(event.snapshot);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text(
          'Университеттер',
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
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 15, bottom: 10, left: 20, right: 20),
            child: PodcastCard(),
          ),
          Expanded(
            child: Container(
              height: 12,
              child: ListView.builder(
                  shrinkWrap: true,
                  // scrollDirection: Axis.vertical,
                  itemCount: _podcastListNew.length,
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  itemBuilder: (context, i) {
                    return podcastItem(context, _podcastListNew[i]);
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Widget podcastItem(BuildContext context, Universitydb universitydb) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    print(width);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0)),
          boxShadow: [
            new BoxShadow(
              color: Colors.redAccent,
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Stack(children: [

          Container(
            width: width / 1,
            height: width / 3.72,
            child: RaisedButton(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0))),
                color: Colors.white,
                textColor: Colors.black,
                disabledTextColor: Colors.black,
                disabledColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        Universitet_about(universitydb: universitydb)),
                  );
                }),
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                ),

                child: FadeInImage.assetNetwork(
                    placeholder: 'assets/news_placeholder.png',
                    width: width/3.5,
                    height: width/3.72,fit: BoxFit.cover,
                    image:universitydb.univerImage,


                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width / 3.0,
                      child: Text(
                        universitydb.univerName,
                        maxLines: 4,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: width / 28),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.black45,
                            size: width / 20,
                          ),
                          Container(

                              width: width / 3.3,
                              child: Text(
                                universitydb.univerLocation,
                                maxLines: 2,
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: width / 30),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),





            ],
          ),
        Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [

               Column(
                 children: [
                   Container(
                     margin: EdgeInsets.only(top: width/30,bottom: width/30),

                     decoration: BoxDecoration(
                      color: Colors.black26,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(width/20),
                        bottomLeft: Radius.circular(width/20),

                      )

              ),

                    height: width/5,
                    child:  new Transform(
                      child:  Center(
                        child: new Text(
                          universitydb.univerCode,style: TextStyle(fontSize: width/28),
                        ),
                      ),
                      alignment: FractionalOffset.center,
                      transform: new Matrix4.identity()
                        ..rotateZ(90 * 3.1415927 / -180),
                    ),
              ),
                 ],
               ),

          ],
        ),


        ]),
      ),
    );
  }
}
