import 'package:week4/component/btn.dart';
import 'package:week4/component/nav_list.dart';
import 'package:flutter/material.dart';

class IntroducePage extends StatefulWidget {
  const IntroducePage(
      {Key? key,
      required this.continues,
      required this.skip,
      required this.title,
      required this.text,
      required this.active,
      required this.img})
      : super(key: key);

  final Function continues;
  final Function skip;
  final String title;
  final String text;
  final int active;
  final String img;

  @override
  _IntroducePageState createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              widget.skip();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "Skip",
                  style: TextStyle(
                    color: Color(0xfffe734c),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Color(0xfffe734c),
                ),
              ],
            ),
          ),
          Image.asset(
            widget.img,
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  color: Color(0xFF404040),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                widget.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF5f7185),
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          NavList(
            active: widget.active,
            pages: 3,
          ),
          btn(
            color: const Color(0xfffe734c),
            Action: widget.continues,
            text: "continue",
          ),
        ],
      ),
    );
  }
}
