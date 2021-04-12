import 'package:Igrants/drawer/drawer.dart';
import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    print(width);

    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        actions: [],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: width / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '5В050100 - Әлеуметтану',
                    style: TextStyle(fontSize: width / 23),
                  ),
                ],
              ),
              SizedBox(height: width / 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Грант саны',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width / 22),
                  ),
                ],
              ),
              SizedBox(height: width / 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Container( decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.red.withOpacity(0.2),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                    child: Card(

                      elevation: 7.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.grey[100],
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, bottom: 10),
                        child: SizedBox(
                          height: width / 5,
                          width: width / 4.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('2020-2021',
                                      style: TextStyle(
                                        fontSize: width / 25,
                                      )),
                                ],
                              ),

                              Text('0',
                                  style: TextStyle(
                                      fontSize: width / 25,
                                      color: Colors.black)),

                            ],
                          ),
                        ),
                      ),


                    ),
                  ),
                  Container( decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.red.withOpacity(0.2),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                    child: Card(
                      elevation: 7.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.grey[100],
                      child: Padding(
                        padding:
                        const EdgeInsets.only(top: 10, left: 15, bottom: 10),
                        child: SizedBox(
                          height: width / 5,
                          width: width / 4.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('2021-2022',
                                      style: TextStyle(
                                        fontSize: width / 25,
                                      )),
                                ],
                              ),

                              Text('0',
                                  style: TextStyle(
                                      fontSize: width / 25,
                                      color: Colors.black)),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container( decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.red.withOpacity(0.2),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                    child: Card(
                      elevation: 7.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.grey[100],
                      child: Padding(
                        padding:
                        const EdgeInsets.only(top: 10, left: 15, bottom: 10),
                        child: SizedBox(
                          height: width / 5,
                          width: width / 4.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Айырмасы',
                                      style: TextStyle(
                                        fontSize: width / 25,
                                      )),
                                ],
                              ),

                              Text('100',
                                  style: TextStyle(
                                      fontSize: width / 25,
                                      color: Colors.green)),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: width / 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Жалпы конкурс',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width / 22),
                  ),
                ],
              ),
              SizedBox(height: width / 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '(ЕНТ балл)',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width / 22),
                  ),
                ],
              ),
              SizedBox(height: width / 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container( decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.red.withOpacity(0.2),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                    child: Card(
                      elevation: 7.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.grey[100],
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [],
                            ),
                            SizedBox(
                              height: width / 5,
                              width: width / 1.3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('MAX',
                                          style: TextStyle(fontSize: width / 25)),
                                      Text('0',
                                          style: TextStyle(fontSize: width / 25)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('MAX',
                                          style: TextStyle(fontSize: width / 25)),
                                      Text('0',
                                          style: TextStyle(fontSize: width / 25)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Орта',
                                          style: TextStyle(fontSize: width / 25)),
                                      Text('0',
                                          style: TextStyle(fontSize: width / 25)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: width / 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ауыл квотасы',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width / 22),
                  ),
                ],
              ),
              SizedBox(height: width / 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '(ЕНТ балл)',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width / 22),
                  ),
                ],
              ),
              SizedBox(height: width / 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container( decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.red.withOpacity(0.2),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                    child: Card(
                      elevation: 7.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.grey[100],
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [],
                            ),
                            SizedBox(
                              height: width / 5,
                              width: width / 1.3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('MAX',
                                          style: TextStyle(fontSize: width / 25)),
                                      Text('0',
                                          style: TextStyle(fontSize: width / 25)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('MAX',
                                          style: TextStyle(fontSize: width / 25)),
                                      Text('0',
                                          style: TextStyle(fontSize: width / 25)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Орта',
                                          style: TextStyle(fontSize: width / 25)),
                                      Text('0',
                                          style: TextStyle(fontSize: width / 25)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: width / 18),
            ],
          ),
        ],
      ),
    );
  }
}
