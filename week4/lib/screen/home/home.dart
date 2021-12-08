import 'package:week4/component/introduce_page.dart';
import 'package:week4/route/path.dart';
import 'package:week4/screen/home/widget/botom_nav.dart';
import 'package:week4/screen/home/widget/horizontal_list.dart';
import 'package:week4/screen/home/widget/vertical.dart';
import 'package:week4/screen/order.dart';
import 'package:week4/screen/start.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String path = homeScreen;
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      bottomNavigationBar: BottomNavigation(
        onTap: onTabTapped,
        selectedTab: _pageIndex,
      ),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xfff8f8f8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Deliver to",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
              ],
            ),
            const Text(
              "Parijat, Housing Estate",
              style: TextStyle(
                color: Color(0xfffd8564),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            iconSize: 40,
            onPressed: () {},
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/images/user.png"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart),
        backgroundColor: Color(0xfffd8564),
        onPressed: () {
          // Navigator.pushNamed(
          //     context, orderScreen,
          // );

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Order()),
          );
        },

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:  <Widget>[
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome Foody!",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff8f8f8),
                    hoverColor: Colors.white,
                    contentPadding: EdgeInsets.all(20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Color(0xFFe3eaef),
                      ),
                    ),
                    border: const OutlineInputBorder(),
                    hintText: "Find Your Food",
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(
                        left: 8,
                      ),
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                    suffixIcon: const Padding(
                      padding: EdgeInsets.only(
                        right: 8,
                      ),
                      child: Icon(
                        Icons.list,
                        color: Color(0xfffd8564),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Nearby Place",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All (12)",
                      style: TextStyle(
                        color: Color(0xfffd8564),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 250,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: const HorizontalList(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Popular Restaurants",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All (12)",
                      style: TextStyle(
                        color: Color(0xfffd8564),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 180,
                child: const VerticalList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
