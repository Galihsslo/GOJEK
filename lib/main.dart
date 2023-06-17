import 'package:flutter/material.dart';
import 'launcher/launcher_view.dart'; //mengambil fungsi launcher
import 'landingpage/landingpage_view.dart';
import 'launcher/launcher_view.dart';
import 'constant.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek',
      theme: new ThemeData(
        fontFamily: 'NeoSans',
        primaryColor: Gojekpalette.green,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: new LauncherPage(),
    );
  }
}
