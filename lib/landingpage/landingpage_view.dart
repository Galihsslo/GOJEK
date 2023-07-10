// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_galih/constant.dart';
import 'package:flutter_galih/beranda/beranda_view.dart';
//import 'package:flutter_galih/beranda/beranda.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    BerandaPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: _buildBottomNavigation());
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
            color: Gojekpalette.green,
          ),
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.assignment,
            color: Gojekpalette.green,
          ),
          icon: Icon(
            Icons.assignment,
            color: Colors.grey,
          ),
          label: 'Pesanan',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.mail,
            color: Gojekpalette.green,
          ),
          icon: Icon(
            Icons.mail,
            color: Colors.grey,
          ),
          label: 'Inbox',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.person,
            color: Gojekpalette.green,
          ),
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          label: 'Akun',
        ),
      ],
    );
  }
}
