import 'package:flutter/material.dart';
import 'package:week1/screens/page1.dart';
import 'package:week1/screens/page2.dart';
class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          child: Text('Drawer Header'),
        ),
        ListTile(
          title: const Text('Item 1'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FirstPage()));
          },
        ),
        ListTile(
          title: const Text('Item 2'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SecondPage()));
          },
        ),
      ],
    );
  }
}
