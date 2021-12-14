import 'package:flutter/material.dart';
import 'package:week6/constants/colors.dart';

class HeaderAppBar extends StatefulWidget {
  const HeaderAppBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HeaderAppBarState createState() => _HeaderAppBarState();
}

class _HeaderAppBarState extends State<HeaderAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: blackColor,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/icons/notify.png"),
              const SizedBox(
                width: 30,
              ),
              Image.asset("assets/icons/more.png"),
            ],
          ),
        ),
      ],
    );
  }
}
