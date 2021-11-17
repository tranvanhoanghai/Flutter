import 'package:flutter/material.dart';
import 'package:week2/constants/colors.dart';
import 'package:week2/screens/authen/login.dart';

class IntroducePage extends StatefulWidget {
  const IntroducePage(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.btnNext,
      required this.onNext})
      : super(key: key);

  final String image;
  final String title;
  final String subTitle;
  final String btnNext;
  final Function onNext;

  @override
  _IntroducePageState createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: introduceBg,
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20.0),
      // width: double.infinity,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.popAndPushNamed(context, '/login');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                  );
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    Image(
                      image: AssetImage(widget.image),
                      alignment: Alignment.center,
                      // height: double.infinity,
                      // width: double.infinity,
                      // fit: BoxFit.fill,
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Column(
                  children: [
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
                ),
              ],
            ),
          ),
          MaterialButton(
            height: 55,
            minWidth: double.infinity,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {
              widget.onNext();
            },
            child: Text(
              widget.btnNext,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            color: const Color(0xFFF7CA18),
          ),
        ],
      ),
    );
  }
}
