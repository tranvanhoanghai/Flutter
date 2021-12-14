import 'package:flutter/material.dart';
import 'package:week6/components/header.dart';
import 'package:week6/constants/colors.dart';
import 'package:week6/routers/paths.dart';
import 'package:week6/screen/home/widgets/card_banner.dart';
import 'package:week6/screen/home/widgets/money_card.dart';
import 'package:week6/screen/home/widgets/statistical.dart';

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
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      floatingActionButton: FloatingActionButton(
        child: Image.asset("assets/icons/plus.png"),
        backgroundColor: primaryColor,
        onPressed: () {},
      ),
      // bottomNavigationBar: BottomNav(),
      appBar: AppBar(
        title: const HeaderAppBar(title: 'Starbucks'),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: const [
              MoneyCart(),
              Statistical(),
              SizedBox(
                height: 30,
              ),
              CardBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
