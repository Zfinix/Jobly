import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jobly/libs/StarRating.dart';

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
          child: ListView(
            children: <Widget>[
              Column(children: <Widget>[
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
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Intro to Art",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Mark Rufus",
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "18 Hours",
                            style: TextStyle(fontSize: 9, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(height: 14),
                      Row(
                        children: <Widget>[
                          StarRating(
                            color: Colors.amber,
                            rating: 4.0,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "46 Reviews",
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                        ],
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
                      elevation: 9,
                      child: IconButton(
                        icon: Icon(Icons.bookmark, color: Colors.grey),
                        onPressed: () {},
                        highlightColor: Colors.black12,
                      ),
                    )
                  ],
                ),
              ]),
              Container(
                  padding: const EdgeInsets.only(
                    left: 28.0,
                    top: 30,
                    right: 28.0,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Text(
                            "Description",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          Icon(Icons.arrow_right, color: Colors.grey)
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          height: 2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Content",
                              style: TextStyle(fontSize: 14),
                            ),
                            Icon(Icons.arrow_drop_down, color: Colors.black)
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            RadioListTile(
                              title: const Text(
                                  'Approaches to designs and abstract patterns',
                                  style: TextStyle(fontSize: 10)),
                              value: 4,
                              onChanged: (value) {},
                              groupValue: 4,
                            ),
                            RadioListTile(
                              title: const Text(
                                  'Coloring and recoloring techniques',
                                  style: TextStyle(fontSize: 10)),
                              value: 2,
                              onChanged: (value) {},
                              groupValue: 4,
                            ),
                            RadioListTile(
                              title: const Text(
                                  'Using a range of tools to create design patterns',
                                  style: TextStyle(fontSize: 10)),
                              value: 3,
                              onChanged: (value) {},
                              groupValue: 4,
                            ),
                            RadioListTile(
                              title: const Text(
                                  'Using stroke setting to customize pattern elements',
                                  style: TextStyle(fontSize: 10)),
                              value: 1,
                              onChanged: (value) {},
                              groupValue: 4,
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        )
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
