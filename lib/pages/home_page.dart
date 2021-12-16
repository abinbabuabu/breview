import 'package:breview/pages/blog_page.dart';
import 'package:breview/pages/friendslist_page.dart';
import 'package:breview/util/Constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      BlogsPage(),
      FriendsList(),
    ];

    void _onTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return FlutterWebFrame(
        maximumSize: Size(750, double.infinity),
        enabled: kIsWeb && MediaQuery.of(context).size.width > 700,
        backgroundColor: Colors.black,
        builder: (context) {
          return Scaffold(
              body: _children[_currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.black,
                selectedItemColor: Constants.SECONDARY_COLOR,
                currentIndex: _currentIndex,
                onTap: _onTapped,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.people), label: "Friends")
                ],
              ));
        });
  }

  @override
  void initState() {
    super.initState();
  }
}
