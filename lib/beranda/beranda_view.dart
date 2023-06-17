import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_galih/beranda/beranda_gojek_appbar.dart';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        child: Scaffold(
      appBar: new GojekAppBar(),
      body: new Container(),
    ));
  }
  @override
  Widget _buildGopayMenu() {
    return new Container(
      height: 120.0,
      decoration: new BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
        ),
        borderRadius: new BorderRadius.all(new Radius.circular(3.0))),
        child: new Column(
          children: [
            new Container(
              padding: EdgeInsets.all(12.0),
            )
          ],
        ),
    )
  }
}


