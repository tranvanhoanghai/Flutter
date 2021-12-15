import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
    required this.selectedTab,
    required this.onTap,
  }) : super(key: key);
  final int selectedTab;
  final ValueChanged<int> onTap;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      color: Colors.white,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: selectedTab == 0 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: selectedTab == 0 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  // setState(() {
                  //   currentScreen =
                  //       Chat(); // if user taps on this dashboard tab will be active
                  //   selectedTab = 1;
                  // });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: selectedTab == 1 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: selectedTab == 1 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ]),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.book,
                          color: selectedTab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Order',
                          style: TextStyle(
                            color: selectedTab == 2 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      // setState(() {
                      //   currentScreen =
                      //       Chat(); // if user taps on this dashboard tab will be active
                      //   selectedTab = 1;
                      // });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person_outlined,
                          color: selectedTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Account',
                          style: TextStyle(
                            color: selectedTab == 3 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ])
          ],
        ),
      ),
    );
  }
}
