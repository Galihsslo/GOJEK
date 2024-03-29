// ignore_for_file: unnecessary_new, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:async';
import '../landingpage/landingpage_view.dart'; //mengambil view landing page

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new LandingPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
      child: new Image.asset(
        "assets/img/gojek.png",
        height: 100.0,
        width: 200.0,
      ),
    ));
  }
}
