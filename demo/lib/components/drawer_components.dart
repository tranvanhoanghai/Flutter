import 'package:flutter/material.dart';

class DrawerComponents extends StatelessWidget {
  const DrawerComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _createHeader(),
        _createDrawerItem(
          icon: Icons.contacts,
          text: 'Contacts',
          onTap: () {},
        ),
        _createDrawerItem(
          icon: Icons.event,
          text: 'Events',
          onTap: () {},
        ),
        _createDrawerItem(icon: Icons.mail, text: 'Send a Email', onTap: () {}),
        Divider(),
        _createDrawerItem(
            icon: Icons.manage_accounts_sharp,
            text: 'User Setting',
            onTap: () {}),
        _createDrawerItem(icon: Icons.phone, text: 'Contact', onTap: () {}),
        _createDrawerItem(icon: Icons.bug_report, text: 'Report', onTap: () {}),
        Divider(),
      ],
    );
  }
}

Widget _createHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/images/city.jpg'))),
      // ignore: prefer_const_literals_to_create_immutables
      child: Stack(children: <Widget>[
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.account_circle_rounded,
                color: Colors.white,
                size: 30,
              ),
              const Text(
                " Byo Cáo",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
      ]));
}

Widget _createDrawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon),
        SizedBox(width: 20),
        Text(text),
      ],
    ),
    onTap: onTap,
  );
}
