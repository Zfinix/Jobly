import 'package:flutter/material.dart';
import 'package:jobly/views/detail.dart';
import 'package:jobly/views/notify.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Jobly',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        routes: {
          '/home': (BuildContext context) => MyHomePage(),
          '/detail': (BuildContext context) => Detail(),
          '/notify': (BuildContext context) => Notify(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _topBar(context) {
    double width = MediaQuery.of(context).size.width;
    double height = width * 0.50;

    return Container(
        child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Hero(
              tag: 'back',
              child: Image.asset('assets/icons/back.png', scale: 3.3),
            ),
          ),
        ],
      ),
      SizedBox(
        width: height,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/detail");
            },
            child: Hero(
              tag: 'notif',
              child: Image.asset('assets/icons/notif.png', scale: 3.3),
            ),
          ),
        ],
      ),
    ]));
  }

  final effects = LinearProgressIndicator(
    backgroundColor: Colors.orange.shade100,
    value: 0.34,
  );

  final intro = LinearProgressIndicator(
    backgroundColor: Colors.orange.shade100,
    value: 0.65,
  );

  final line = SizedBox(
      width: 330, height: 0.32, child: Container(color: Colors.black26));

  Widget _buildAvatar() {
    return Hero(
      tag: 'avatar',
      child: Image.asset("assets/icons/profile.png", scale: 5.3),
    );
  }

  Widget _rowStats() {
    double width = MediaQuery.of(context).size.width;
    double height = width * 0.20;
    return Center(
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text("17",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 9,
              ),
              Text("Projects",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300)),
            ],
          ),
          SizedBox(
            width: height,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text("1.5k+",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 9,
              ),
              Text("Likes",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300)),
            ],
          ),
          SizedBox(
            width: height,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text("1.4M",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 9,
              ),
              Text("Followers",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300)),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: Center(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                _topBar(context),
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/detail");
                    },
                    child: _buildAvatar()),
                Text("Ogbonda Chiziaruhoma",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Text("UI/UX Designer",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w200)),
                SizedBox(height: 20),
                _rowStats(),
                SizedBox(height: 20),
                line,
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 21),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            SizedBox(width: 35),
                            Text("Welcome",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  child: Image.asset("assets/icons/effects.png",
                                      scale: 5.2),
                                ),
                                Text("Adobe After Effects",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 8),
                                Row(
                                  children: <Widget>[
                                    Text("Tony Hammers",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300)),
                                    SizedBox(width: 45)
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    SizedBox(
                                        height: 3, width: 90, child: effects),
                                    SizedBox(width: 10),
                                    Text("34%",
                                        style: TextStyle(
                                          fontSize: 9,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  child: Image.asset("assets/icons/intro.png",
                                      scale: 5.2),
                                ),
                                Text("Intro to motion Design",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 8),
                                Row(
                                  children: <Widget>[
                                    Text("Amy Swimmer",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300)),
                                    SizedBox(width: 45),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    SizedBox(
                                        height: 3, width: 90, child: intro),
                                    SizedBox(width: 10),
                                    Text("65%",
                                        style: TextStyle(
                                          fontSize: 9,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
