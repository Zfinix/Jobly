import 'package:flutter/material.dart';
import 'package:jobly/views/messages.dart';

class Notify extends StatefulWidget {
  @override
  _NotifyPageState createState() => _NotifyPageState();
}

class _NotifyPageState extends State<Notify>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    //nemw();

    // Initialize the Tab Controller
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

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
              controller: controller,
              tabs: [
                Tab(
                  text: "Messages",
                ),
                Tab(text: "Users"),
              ],
            ),
            title: Text('Jobly'),
          ),
          body: TabBarView(
            controller: controller,
            children: [
              Messages(),
              Center(
                child: Container(
                  child: Text("No Current Users"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
