import 'package:flutter/material.dart';
import 'package:week1/routers/path.dart';

import 'package:week1/components/drawer_component.dart';
import 'package:week1/screens/page1.dart';

class HomePage extends StatelessWidget {
  static String path = homePath;
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: const Center(
        child: Text('My Home Page!'),
      ),
      drawer: Drawer(
        // backgroundColor: Colors.greenAccent,
        child: DrawerComponent(),
      ),
    );
  }
}
