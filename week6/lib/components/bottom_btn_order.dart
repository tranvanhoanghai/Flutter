import 'package:flutter/material.dart';
import 'package:week6/constants/colors.dart';


class BottomBtnOrder extends StatefulWidget {
  const BottomBtnOrder({Key? key, required this.url, required this.title}) : super(key: key);

  final String url;
  final String title;


  @override
  _BottomBtnOrderState createState() => _BottomBtnOrderState();
}

class _BottomBtnOrderState extends State<BottomBtnOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 29.0, right: 29.0, top: 7, bottom: 10),
      height: 72,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.transparent),
          backgroundColor: primaryColor,
          minimumSize: const Size(90, 90),
        ),
        onPressed: () {
          Navigator.pushNamed(
            context,
            widget.url,
          );
        },
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
