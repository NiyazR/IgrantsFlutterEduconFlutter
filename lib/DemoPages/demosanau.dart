import 'package:Igrants/drawer/drawer.dart';
import 'package:flutter/material.dart';

class SanauPage extends StatefulWidget {
  _SanauPageState createState() => _SanauPageState();
}

class _SanauPageState extends State<SanauPage> {
  int _counter = 0;
  bool CheckBoxValue = false;
  int group = 1;

  double _starValue = 0;
  double _endValue = 0;
  double minValue = 0;
  double maxValue = 140;

  final startController = TextEditingController();
  final endController = TextEditingController();

  @override
  void initState() {
    super.initState();

    startController.addListener(_setStartValue);
    endController.addListener(_setEndValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    startController.dispose();
    endController.dispose();
    super.dispose();
  }

  _setStartValue() {}

  _setEndValue() {
    if (double.parse(startController.text).roundToDouble() <=
            double.parse(endController.text).roundToDouble() &&
        double.parse(endController.text).roundToDouble() <= maxValue) {
      setState(() {
        _endValue = double.parse(endController.text).roundToDouble();
      });
    }
    print("Second text field: ${endController.text}");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    print(width);

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Column(
        children: [
          SizedBox(height: width / 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ауыл квотасы',
                    style: TextStyle(fontSize: width / 20),
                  ),
                ],
              ),
              Transform.scale(
                scale: height / 500,
                child: Checkbox(
                    hoverColor: Colors.black,
                    activeColor: Colors.green,
                    value: CheckBoxValue,
                    onChanged: (bool value) {
                      print(value);

                      setState(() {
                        CheckBoxValue = value;
                      });
                    }),
              ),
            ],
          ),
          SizedBox(height: width / 10),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87, width: 1)),
                width: width / 1.2,
                child: RangeSlider(
                  activeColor: Colors.green,
                  inactiveColor: Colors.black87,
                  values: RangeValues(_starValue, _endValue),
                  min: minValue,
                  max: maxValue,
                  onChanged: (values) {
                    setState(() {
                      startController.text =
                          values.start.roundToDouble().toString();
                      endController.text =
                          values.end.roundToDouble().toString();
                    });
                  },
                ),
              ),
              SizedBox(height: width / 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Балл',
                    style: TextStyle(
                        fontSize: width / 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width / 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black87, width: 1)),
                    width: width / 3,
                    height: width / 10,
                    child: TextField(
                      cursorColor: Colors.indigo,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Санды  енгізіңіз',
                      ),
                      style: TextStyle(fontSize: width / 25),
                      controller: endController,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: width / 5),
          FlatButton(
              color: Colors.indigo,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Есептеу",
                  style: TextStyle(color: Colors.white, fontSize: width / 20),
                ),
              ),
              onPressed: () {
                // some code here
              })
        ],
      ),
    );
  }
}
