import 'package:flutter/material.dart';
import 'package:week1/screens/home.dart';
import 'package:week1/screens/page1.dart';
import 'package:week1/screens/page2.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.path: (context) => const HomePage(),
  FirstPage.path: (context) => const FirstPage(),
  SecondPage.path: (context) => const SecondPage()
};
