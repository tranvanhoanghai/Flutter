import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int _itemCount = 1;
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
        color: Color(0xFFCCDAFC),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 24,
            height: 24,
            child: OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              ),
              onPressed: () {
                setState(() {
                  if (_itemCount > 1) {
                    _itemCount--;
                  }
                });
              },
              child: Icon(
                Icons.remove,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text('$_itemCount'),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 24,
            height: 24,
            child: OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              ),
              onPressed: () {
                setState(() {
                  _itemCount++;
                });
              },
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
