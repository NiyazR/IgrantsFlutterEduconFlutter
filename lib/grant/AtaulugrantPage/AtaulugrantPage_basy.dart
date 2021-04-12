import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Ataulygranbasy extends StatefulWidget {
  _AtaulygranbasyState createState() => _AtaulygranbasyState();
}

class _AtaulygranbasyState extends State<Ataulygranbasy> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    print(width);
    return Container(      child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
          child: Column(
            children: [


                 Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     SizedBox(height: 15),
                     Container(
                      width: width / 4,
                      child: Image(
                        image: AssetImage(
                          'assets/onboarding2.png',
                        ),
                      ),
                ),
                   ],
                 ),


              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                    hintText: 'Сұрағыңызды енгізіңіз...',
                    contentPadding: EdgeInsets.symmetric(vertical: 9),
                  ),
                ),
              ),
            ],
          ),
        ),


      ],
    ),
    );

  }
}

