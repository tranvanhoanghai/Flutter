import 'package:flutter/material.dart';
import 'package:week8/constants/colors.dart';

class BackgroundScreen extends StatefulWidget {
  const BackgroundScreen({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  _BackgroundScreenState createState() => _BackgroundScreenState();
}

class _BackgroundScreenState extends State<BackgroundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: widget.child
            ),
            Positioned(
              top: -100,
              left: -50,
              child: Container(
                width: 290,
                height: 190,
                decoration: const ShapeDecoration(
                  color: shapeBackgroundColor,
                  shape: CircleBorder(),
                ),
              ),
            ),
            Positioned(
              top: -20,
              left: -150,
              child: Container(
                width: 290,
                height: 190,
                decoration: const ShapeDecoration(
                  color: shapeBackgroundColor1,
                  shape: CircleBorder(),
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              right: -50,
              child: Container(
                width: 290,
                height: 190,
                decoration: const ShapeDecoration(
                  color: shapeBackgroundColor1,
                  shape: CircleBorder(),
                ),
              ),
            ),
            Positioned(
              bottom: -20,
              right: -150,
              child: Container(
                width: 290,
                height: 190,
                decoration: const ShapeDecoration(
                  color: shapeBackgroundColor,
                  shape: CircleBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
