import 'package:flutter/material.dart';
import 'package:week8/components/background.dart';
import 'package:week8/constants/colors.dart';
import 'package:week8/routers/paths.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String path = logInScreen;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                width: 200,
                child: Image(
                  image: AssetImage('assets/images/clock.png'),
                  alignment: Alignment.center,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              const Text(
                'MediCue',
                style: TextStyle(fontSize: 30, color: iconColor),
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
              const Text(
                'Forgot Password',
                style: TextStyle(fontSize: 16, color: Color(0xff50C2C9)),
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
                    homeScreen,
                  );
                },
                child: const Text(
                  'LogIn',
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
                    'Don’t have an account ? ',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        signUpScreen,
                      );
                    },
                    child: const Text(
                      'Sign Up',
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
