import 'package:flutter/material.dart';
import 'launcher/launcher_view.dart'; //mengambil fungsi launcher
import 'constant.dart';

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
      theme: ThemeData(
        fontFamily: 'NeoSans',
        primaryColor: Gojekpalette.green,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: LauncherPage(),
    );
  }
}
