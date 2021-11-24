import 'package:flutter/material.dart';

class FurnitureBottomNavigation extends StatelessWidget {
  const FurnitureBottomNavigation({
    Key? key,
    required this.selectedTab,
    required this.onTap,
  }) : super(key: key);
  final int selectedTab;
  final ValueChanged<int> onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: selectedTab,
      type: BottomNavigationBarType.fixed,
      items: List.generate(
        navIconSrc.length,
            (index) => BottomNavigationBarItem(
          icon: Image.asset(
            navIconSrc[index],
            color: index == selectedTab ? Color(0xFFF7CC74) : Color(0xFFBFBFBF),
          ),
          label: "",
        ),
      ),
    );
  }
}

List<String> navIconSrc = [
  "assets/images/icons/Home.png",
  "assets/images/icons/Discount.png",
  "assets/images/icons/Buy.png",
  "assets/images/icons/Profile.png"
];
