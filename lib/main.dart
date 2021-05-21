import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Apppppp(),
    );
  }
}

class Apppppp extends StatefulWidget {
  @override
  _AppppppState createState() => _AppppppState();
}

class _AppppppState extends State<Apppppp> {
  bool valuefirst = false;
  bool valuesecond = false;

  int _value = 1;

  var selected = 'relation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY Profile"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("Enter Name"),
                    ],
                  ),
                ),
                Container(
                    height: 30,
                    width: 349,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("Enter Name"),
                    ],
                  ),
                ),
                Container(
                    height: 30,
                    width: 349,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("Email"),
                    ],
                  ),
                ),
                Container(
                    height: 30,
                    width: 349,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("Age"),
                    ],
                  ),
                ),
                Container(      
                    height: 30,
                    width: 349,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    )),
                Container(
                    margin: EdgeInsets.all(3),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Gender",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Container(
                  alignment: Alignment.topLeft,
                  child: DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("Male"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Female"),
                          value: 2,
                        )
                      ],
                      onChanged: (gender) {
                        setState(() {
                          _value = gender;
                        });
                      }),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Singal"),
                        leading: Radio(
                            value: '_Singal',
                            groupValue: selected,
                            onChanged: (value) {
                              setState(() {
                                selected = value;
                              });
                            }),
                      ),
                      ListTile(
                        title: Text("Married"),
                        leading: Radio(
                          value: 'relation',
                          groupValue: selected,
                          onChanged: (value) {
                            setState(() {
                              selected = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("Password"),
                    ],
                  ),
                ),
                Container(
                    height: 30,
                    width: 349,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text("Confirm Password"),
                    ],
                  ),
                ),
                Container(
                    height: 30,
                    width: 349,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    )),
                Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Checkbox(
                              checkColor: Colors.black,
                              activeColor: Colors.amber,
                              value: this.valuefirst,
                              onChanged: (bool value) {
                                setState(() {
                                  this.valuefirst = value;
                                });
                              }),
                          Text(" I Agree all terms and Conditions ",
                              style: TextStyle(
                                fontSize: 18,
                              )),
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
    );
  }
}
