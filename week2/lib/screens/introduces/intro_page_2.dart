import 'package:flutter/material.dart';
import 'package:week2/components/pages/introduce_page.dart';

import 'intro_page_3.dart';

class IntroducePage2 extends StatelessWidget {
  const IntroducePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroducePage(
          image: 'assets/images/introduces/intro2.png',
          title: 'My Furniture',
          subTitle: 'We send your best furniture',
          btnNext: 'Continue',
          onNext: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const IntroducePage3(),
              ),
            );
          },
        ),
      ),
    );
  }
}
