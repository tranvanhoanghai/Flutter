import 'package:flutter/material.dart';
import 'package:week6/constants/colors.dart';

class TagItem extends StatefulWidget {
  const TagItem({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _TagItemState createState() => _TagItemState();
}

class _TagItemState extends State<TagItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: secondaryGrey,
          style: BorderStyle.solid,
          width: 1.0,
        ),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 0,
      ),
      child: Tab(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
