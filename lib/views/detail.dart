import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Detail extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height * 0.40;
    double screenWidth = MediaQuery.of(context).size.width;

    final saved = Hero(
      tag: 'saved',
      child: Image.asset("assets/icons/save.png", scale: 3.5),
    );

    double _bodyHeight = 0.0;

    return Container(
      color: Colors.white,
      child: MediaQuery.removePadding(
        removeTop: true,
        removeLeft: true,
        removeRight: true,
        context: context,
        child: Material(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                child: new Hero(
                  tag: "avatar",
                  child: new SizedBox(
                    child: Container(
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage("assets/icons/art.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    width: screenWidth,
                    height: screenHeight,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Intro to Art",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Mark Rufus",
                          style: TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "18 Hours",
                          style: TextStyle(fontSize: 7),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Row(
                      children: <Widget>[],
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 250,
                    child: MaterialButton(
                      elevation: 12,
                      height: 50,
                      highlightColor: Colors.blue,
                      onPressed: () {},
                      color: Colors.blue,
                      child: Text(
                        "Join Course",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Card(
                    elevation: 10,
                    child: IconButton(
                      icon: Icon(Icons.bookmark, color: Colors.grey),
                      onPressed: () {},
                      highlightColor: Colors.black12,
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Text(
                        "Join Course",
                        style: TextStyle(fontSize: 14),
                      ),
                      Icon(Icons.bookmark, color: Colors.grey)
                      ],)
                    ],
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
