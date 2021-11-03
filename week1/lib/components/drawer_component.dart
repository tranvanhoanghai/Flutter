import 'package:flutter/material.dart';
import 'package:week1/screens/page1.dart';
import 'package:week1/screens/page2.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage('assets/images/a.png'),
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              )),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: const Text('Page 1'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FirstPage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: const Text('Page 2'),
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
