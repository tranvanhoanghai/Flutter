import 'package:flutter/material.dart';
import 'package:week6/constants/colors.dart';

class CountCart extends StatefulWidget {
  const CountCart({Key? key, required this.isShow}) : super(key: key);

  final bool isShow;
  @override
  _CountCartState createState() => _CountCartState();
}

class _CountCartState extends State<CountCart> {
  int _itemCount = 1;
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isShow,
      child: Container(
        constraints:
            const BoxConstraints(minHeight: 30, minWidth: 80, maxWidth: 100),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
          color: secondaryGrey,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 24,
              height: 24,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.transparent),
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () {
                  setState(() {
                    if (_itemCount > 1) {
                      _itemCount--;
                    }
                  });
                },
                child: const Icon(
                  Icons.remove,
                  color: blackColor,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text('$_itemCount'),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 24,
              height: 24,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.transparent),
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () {
                  setState(() {
                    _itemCount++;
                  });
                },
                child: const Icon(
                  Icons.add,
                  color: blackColor,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
