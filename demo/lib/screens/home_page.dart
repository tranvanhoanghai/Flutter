// ignore_for_file: unused_element, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:demo/components/drawer_components.dart';
import 'package:demo/routes/path.dart';
import 'package:demo/screens/page_1.dart';

class HomePage extends StatelessWidget {
  static String path = homePath;
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          elevation: 0,
          title: const Text('HomeWork'),
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.home_filled)),
            Tab(icon: Icon(Icons.account_circle)),
            Tab(icon: Icon(Icons.settings_suggest_rounded)),
          ]),
        ),
        drawer: Drawer(
          // backgroundColor: Colors.greenAccent,
          child: DrawerComponents(),
        ),
        body: TabBarView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Page1(),
            Icon(Icons.account_circle),
            Icon(Icons.settings_suggest_rounded),
          ],
        ),
      ),
    );
  }
}
