import 'package:flutter/material.dart';
import 'package:week4/component/text_bottom.dart';
import 'package:week4/component/btn.dart';
import 'package:week4/component/nav_list.dart';
import 'package:week4/route/path.dart';

class Start extends StatefulWidget {
  const Start({
    Key? key,
    required this.active,
  }) : super(key: key);
  final int active;

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/img3.png",
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
          const Text(
            "Qick Food Delivery",
            style: TextStyle(
              color: Color(0xFF404040),
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
              "Loved the class Such beautiful land and collective impact infrastructure social entrepreneur.",
          textAlign: TextAlign.center,),
          NavList(
            active: widget.active,
            pages: 3,
          ),
          btn(
            color: Color(0xfff4167b0),
            Action: () {
              const snackBar = SnackBar(content: Text('Tap'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            text: "sing in with facebook",
          ),
          btn(
            color: Color(0xfffe734c),
            Action: () {
              Navigator.pushNamed(context, signIn);
            },
            text: "sing in",
          ),
          TextBottom(
            textLeft: "Or Start to",
            textRight: "Search Now",
            action: () {},
          ),
        ],
      ),
    );
  }
}
