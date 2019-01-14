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

    final saved = Container(
        padding: EdgeInsets.all(5),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Hero(
          tag: 'saved',
          child: Image.asset("assets/icons/saved.png", scale: 5.3),
        ));

    return Container(
      color: Colors.white,
      // 1
      // appBar: _buildBar(context),
      child: MediaQuery.removePadding(
        removeTop: true,
        removeLeft: true,
        removeRight: true,
        context: context,
        child: Material(
          child: ListView(children: <Widget>[
            Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
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
                padding: const EdgeInsets.only(left: 3),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Intro to Art",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Mark Rufus",
                      style: TextStyle(fontSize: 9),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "18 Hours",
                      style: TextStyle(fontSize: 7),
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: <Widget>[],
                    ),
                    SizedBox(height: 34),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CupertinoButton(
                          onPressed: () {},
                          color: Colors.blue,
                          child: Text(
                            "Join Course",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                 Column(
                   children: <Widget>[
                     ],
                 )
                  ],
                ),
              )
            ]),
          ]),
        ),
      ),
    );
  }
}
