import 'package:flutter/material.dart';

class Notify extends StatefulWidget {
  @override
  _NotifyPageState createState() => _NotifyPageState();
}

class _NotifyPageState extends State<Notify> {
  
  final line = Hero(
    tag: 'hero',
    child: Image.asset('assets/icons/line.png', scale: 3.7),
  );

  final topBar = Card(
      color: Colors.white,
      child: SizedBox(
          height: 48,
          child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
            Hero(
              tag: 'back',
              child: Image.asset('assets/icons/back.png', scale: 3.7),
            ),
            SizedBox(
              width: 80,
            ),
            Text("Messages"),
            SizedBox(
              width: 80,
            ),
            FlatButton(
              onPressed: () {},
              child: Hero(
                tag: 'hero',
                child: Image.asset('assets/icons/notif.png', scale: 3.7),
              ),
            ),
          ])));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
