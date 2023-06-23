import 'package:flutter/material.dart';
import 'package:flutter_galih/constant.dart';
import 'package:flutter_galih/beranda/beranda_view.dart';
//import 'package:flutter_galih/beranda/beranda.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new BerandaPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: _buildBottomNavigation());
  }

  Widget _buildBottomNavigation() {
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.home,
            color: Gojekpalette.green,
          ),
          icon: new Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.assignment,
            color: Gojekpalette.green,
          ),
          icon: new Icon(
            Icons.assignment,
            color: Colors.grey,
          ),
          label: 'Pesanan',
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.mail,
            color: Gojekpalette.green,
          ),
          icon: new Icon(
            Icons.mail,
            color: Colors.grey,
          ),
          label: 'Inbox',
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.person,
            color: Gojekpalette.green,
          ),
          icon: new Icon(
            Icons.person,
            color: Colors.grey,
          ),
          label: 'Akun',
        ),
      ],
    );
  }
}
