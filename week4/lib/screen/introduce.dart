import 'package:week4/component/introduce_page.dart';
import 'package:week4/route/path.dart';
import 'package:week4/screen/start.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  static String path = introPage;
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onChangePage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      IntroducePage(
        continues: () {
          _onChangePage(1);
        },
        skip: () {
          _onChangePage(2);
        },
        title: "GPS Tracking",
        text:
        "Loved the class Such beautiful land and collective impact infrastructure social entrepreneur.",
        active: _selectedIndex,
        img: "assets/images/img1.png",
      ),
      IntroducePage(
        continues: () {
          _onChangePage(2);
        },
        skip: () {
          _onChangePage(2);
        },
        title: "GPS Tracking",
        text:
        "Loved the class Such beautiful land and collective impact infrastructure social entrepreneur.",
        active: _selectedIndex,
        img: "assets/images/img2.png",
      ),
      Start(
        active: _selectedIndex,
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: _onItemTapped,
          children: _pages,
        ),
      ),
    );
  }
}
