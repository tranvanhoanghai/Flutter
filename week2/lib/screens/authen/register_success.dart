import 'package:flutter/material.dart';
import 'package:week2/constants/colors.dart';

import 'login.dart';

class RegisterSuccess extends StatelessWidget {
  const RegisterSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
          width: double.infinity,
          color: introduceBg,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: const [
                        Image(
                          image: AssetImage('assets/images/auths/reg_done.png'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              MaterialButton(
                height: 58,
                minWidth: 340,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                  );
                },
                child: const Text(
                  'Login Now',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                color: const Color(0xFFF7CA18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
