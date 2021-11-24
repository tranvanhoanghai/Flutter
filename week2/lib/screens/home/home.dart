import 'package:flutter/material.dart';
import 'package:week2/screens/home/widgets/bottom_nav.dart';
import 'package:week2/screens/home/widgets/header.dart';
import 'package:week2/screens/home/widgets/horizontal_cart.dart';
import 'package:week2/screens/home/widgets/menu.dart';
import 'package:week2/screens/home/widgets/search.dart';
import 'package:week2/screens/home/widgets/vertical_cart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageIndex = 0;
  PageController _pageController = PageController();
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: FurnitureBottomNavigation(
        onTap: onTabTapped,
        selectedTab: _pageIndex,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constrains) {
              // var size;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Header(),
                  SearchBar(),
                  Menus(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Best For You',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  HorizontalCard(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Best For You',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  VerticalCart()
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
