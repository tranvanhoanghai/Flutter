import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset('assets/images/icons/start.png'),
        const SizedBox(
          width: 4,
        ),
        Image.asset('assets/images/icons/start.png'),
        const SizedBox(
          width: 4,
        ),
        Image.asset('assets/images/icons/start.png'),
        const SizedBox(
          width: 4,
        ),
        Image.asset('assets/images/icons/start.png'),
        const SizedBox(
          width: 4,
        ),
        Image.asset('assets/images/icons/start.png'),
        const SizedBox(
          width: 4,
        ),
      ],
    );
  }
}
