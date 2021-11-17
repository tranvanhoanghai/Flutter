import 'package:flutter/material.dart';
import 'package:week2/components/pages/introduce_page.dart';

import 'intro_page_2.dart';

class IntroducePage1 extends StatelessWidget {
  const IntroducePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroducePage(
            image: 'assets/images/introduces/intro1.png',
            title: 'My Furniture',
            subTitle: 'Your perfect interior design',
            btnNext: 'Continue',
            onNext: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const IntroducePage2(),
                ),
              );
            }),
      ),
    );
  }
}
