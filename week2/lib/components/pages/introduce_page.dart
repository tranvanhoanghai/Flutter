import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroducePage extends StatefulWidget {
  const IntroducePage(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.btnNext})
      : super(key: key);

  final String image;
  final String title;
  final String subTitle;
  final String btnNext;

  @override
  _IntroducePageState createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
      width: double.infinity,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              // Image.asset(widget.image),
              Image(
                image: AssetImage(widget.image),
                alignment: Alignment.center,
                // height: double.infinity,
                // width: double.infinity,
                // fit: BoxFit.fill,
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                widget.subTitle,
                style: const TextStyle(fontSize: 16.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
