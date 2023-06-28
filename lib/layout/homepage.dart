import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sampahku/pages/home.dart';
import 'package:sampahku/pages/list.dart';
import 'package:sampahku/pages/setting.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  int _currentindex = 0;
  List<Widget> body = const [Home(), Lists(), Setting()];

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff012970),
        appBar: AppBar(
          leading: Container(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              'assets/icons/icon.png',
              fit: BoxFit.contain,
            ),
          ),
          title: const Text(
            "Sampahku",
            style: TextStyle(
                color: Color(0xff012970), fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: body[_currentindex],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: _currentindex,
          backgroundColor: const Color(0xff012970),
          animationDuration: const Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
          items: const [
            Icon(Icons.home),
            Icon(Icons.list),
            Icon(Icons.settings),
          ],
        ));
  }
}
