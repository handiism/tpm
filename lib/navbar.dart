import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tpm/layang.dart';
import 'package:tpm/segitiga.dart';
import 'package:tpm/profil.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Segitiga(),
    LayangLayang(),
    Profil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuis TPM'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/triangle.svg",
              height: 30,
              // ignore: deprecated_member_use
              color: Colors.white,
            ),
            label: 'Segitiga',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 30,
              child: Image.asset(
                "assets/kite.png",
              ),
            ),
            label: 'Layang-Layang',
            backgroundColor: Colors.blue,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
            backgroundColor: Colors.blue,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
