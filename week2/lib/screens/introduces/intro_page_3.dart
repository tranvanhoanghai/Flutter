import 'package:flutter/material.dart';
import 'package:week2/components/pages/introduce_page.dart';
import 'package:week2/screens/authen/login.dart';

class IntroducePage3 extends StatelessWidget {
  const IntroducePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroducePage(
          image: 'assets/images/introduces/intro3.png',
          title: 'My Furniture',
          subTitle: 'Find your best furniture',
          btnNext: 'Continue',
          onNext: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Login(),
              ),
            );
          },
        ),
      ),
    );
  }
}
