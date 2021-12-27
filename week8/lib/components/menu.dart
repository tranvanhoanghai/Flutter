import 'package:flutter/material.dart';
import 'package:week8/routers/paths.dart';

class MenuItem extends StatefulWidget {
  const MenuItem(
      {Key? key,
      required this.img,
      required this.title,
      required this.subTitle})
      : super(key: key);
  final String img;
  final String title;
  final String subTitle;

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: 52,
            child: Image(
              image: AssetImage(widget.img),
              alignment: Alignment.center,
              width: double.infinity,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    progressScreen,
                  );
                },
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Text(
                widget.subTitle,
                style: TextStyle(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
