import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: size.width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'My Furniture',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Your partner interior design',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white10,
              ),
            ),
            Image.asset('assets/images/icons/chat.png'),
          ],
        ),
      ),
    );
  }
}
