import 'package:flutter/material.dart';
import 'package:week8/components/background.dart';
import 'package:week8/constants/colors.dart';
import 'package:week8/routers/paths.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String path = signUpScreen;

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundScreen(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 150,
                child: Image(
                  image: AssetImage('assets/images/clock.png'),
                  alignment: Alignment.center,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              const Text(
                'MediCue',
                style: TextStyle(fontSize: 17, color: iconColor),
              ),
              const SizedBox(
                height: 14,
              ),
              const TextField(
                style: TextStyle(height: 1, color: blackColor),
                decoration: InputDecoration(
                  fillColor: Color(0xfff9f9f9),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40.0),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                    ),
                  ),
                  hintText: 'Enter your full name',
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              const TextField(
                style: TextStyle(height: 1, color: blackColor),
                decoration: InputDecoration(
                  fillColor: Color(0xfff9f9f9),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40.0),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                    ),
                  ),
                  hintText: 'Enter your Email',
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              const TextField(
                style: TextStyle(height: 1, color: blackColor),
                decoration: InputDecoration(
                  fillColor: Color(0xfff9f9f9),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40.0),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                    ),
                  ),
                  hintText: 'Enter Password',
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              const TextField(
                style: TextStyle(height: 1, color: blackColor),
                decoration: InputDecoration(
                  fillColor: Color(0xfff9f9f9),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40.0),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                    ),
                  ),
                  hintText: 'Confirm Password',
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              MaterialButton(
                height: 62,
                minWidth: 243,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    logInScreen,
                  );
                },
                child: const Text(
                  'SignUp',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                color: primaryColor,
              ),
              const SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account ? ',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        logInScreen,
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff50C2C9),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
