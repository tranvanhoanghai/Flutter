import 'package:flutter/material.dart';
import 'package:week6/constants/colors.dart';
import 'package:week6/routers/paths.dart';
import 'package:week6/screen/home/home.dart';
import 'package:week6/screen/orders/order.dart';

class BottomNav extends StatefulWidget {
  static String path = homeScreen;

  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _pageIndex = 0;
  PageController _pageController = PageController();

  List<Widget> tabPages = [
    const HomeScreen(),
    const OrderScreen()

  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  void onPageChanged(int page) {
    setState(() {
      _pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }

  Widget get bottomNavigationBar {
    return Container(
      decoration: const BoxDecoration(
        // borderRadius: BorderRadius.only(
        //     topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey[500],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border,
                size: 35,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_drink_outlined,
                size: 35,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card_rounded,
                size: 35,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on_outlined,
                size: 35,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
