import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height * 0.40;
 double screenWidth = MediaQuery.of(context).size.width;

    return  Container(
        color: Colors.white,
        // 1
        // appBar: _buildBar(context),
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
        child: ListView(children: <Widget>[
          Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
            Container(
              child: new SizedBox(
                child: new SizedBox(
                  child: Hero(
                    tag: 'avatar',
                    child: Image.asset('assets/icons/art.png', scale: 3.7),
                  ),
                  width: screenWidth,
                  height: screenHeight,
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
