import 'package:flutter/material.dart';
import 'launcher/launcher_view.dart'; //mengambil fungsi launcher
import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek',
      theme: ThemeData(
        fontFamily: 'NeoSans',
        primaryColor: Gojekpalette.green,
      ),
      home: LauncherPage(),
    );
  }
}
