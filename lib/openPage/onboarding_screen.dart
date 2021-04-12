import 'package:Igrants/Mamandyktar/Mamndyktar.dart';
import 'package:Igrants/university/university.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF7B51D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    print(width);

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.3, 0.7, 0.9],
              colors: [
                Colors.pinkAccent[200],
                Colors.indigoAccent[200],
                Colors.lightBlue[600],
                Colors.lightBlue[300],
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: height/30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MamndyktarPage()));
                    },
                    child: Text(
                      'Өткізу',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: height / 35,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: height / 1.5,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            left: width / 14, right: width / 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Container(
                                width: width / 1.9,
                                child: Image(
                                  image: AssetImage(
                                    'assets/onboarding0.png',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: height / 15),
                            Text(
                              'Lorem ipsum dolor sit amt, consect adipiscing elit, sed ',
                              style: TextStyle(
                                  fontSize: height / 32, color: Colors.white),
                            ),
                            SizedBox(height: 15.0),
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Text(
                                'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                                style: TextStyle(
                                    fontSize: height / 42, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width / 14, right: width / 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Container(
                                width: width / 1.9,
                                child: Image(
                                  image: AssetImage(
                                    'assets/onboarding1.png',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: height / 15),
                            Text(
                              'Lorem ipsum dolor sit amt, consect adipiscing elit, sed ',
                              style: TextStyle(
                                  fontSize: height / 32, color: Colors.white),
                            ),
                            SizedBox(height: 15.0),
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Text(
                                'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                                style: TextStyle(
                                    fontSize: height / 42, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width / 14, right: width / 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Container(
                                width: width / 1.9,
                                child: Image(
                                  image: AssetImage(
                                    'assets/onboarding2.png',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: height / 15),
                            Text(
                              'Lorem ipsum dolor sit amt, consect adipiscing elit, sed ',
                              style: TextStyle(
                                  fontSize: height / 32, color: Colors.white),
                            ),
                            SizedBox(height: 15.0),
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Text(
                                'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                                style: TextStyle(
                                    fontSize: height / 42, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Келесі',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height / 35,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: width / 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? FlatButton(

              color: Colors.white,hoverColor: Colors.white,
              disabledColor: Colors.white,
              focusColor: Colors.white,
              highlightColor: Colors.white,
              child: Container(
                height: height / 7,

                color: Colors.white,

                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: height/45),
                      child: Text(
                        'Бастаңыз',
                        style: TextStyle(
                          color: Colors.indigo,
                          fontSize: width / 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MamndyktarPage()));
              },
            )
          : Text(''),
    );
  }
}
