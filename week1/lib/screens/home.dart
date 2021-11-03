import 'package:flutter/material.dart';
import 'package:week1/routers/path.dart';

import 'package:week1/components/drawer_component.dart';
import 'package:week1/screens/page1.dart';

class HomePage extends StatelessWidget {
  static String path = homePath;
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
          drawer: Drawer(
            child: DrawerComponent(),
          ),
        ));
  }
}
