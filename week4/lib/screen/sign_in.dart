import 'package:week4/component/text_bottom.dart';
import 'package:week4/component/text_input.dart';
import 'package:week4/component/btn.dart';
import 'package:week4/route/path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  static String path = signIn;
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "SIGN IN",
                    style: TextStyle(
                      color: Color(0xFF404040),
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Complete this step for best adjustment"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Your Email"),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Input(
                      obscureText: false,
                      hintText: 'hellobesnik@gmail.com',
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Password"),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Input(
                      obscureText: !toggle,
                      hintText: '***********',
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        // SizedBox(
                        //   height: 10,
                        //   child: CupertinoSwitch(
                        //     activeColor: Color(0xfffe734c),
                        //     value: toggle,
                        //     onChanged: (bool value) {
                        //       setState(
                        //         () {
                        //           toggle = value;
                        //         },
                        //       );
                        //     },
                        //   ),
                        // ),
                        SizedBox(
                            width: 50,
                            child: Switch(
                                activeColor: Color(0xfffe734c),
                                value: toggle,
                                onChanged: (bool value) {
                                  setState(
                                        () {
                                      toggle = value;
                                    },
                                  );
                                }
                            )
                        ),
                        const Text("Remember Me"),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, forgotPass);
                              },
                              child: Text("Forgot password?"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    btn(
                        color: const Color(0xfffe734c),
                        Action: () {},
                        text: "Sing in")
                  ],
                ),
              ),
            ),
            btn(
              color: const Color(0xfff4167b0),
              Action: () {},
              text: "sign in with facebook",
            ),
            TextBottom(
              textLeft: "I don't have account ?",
              textRight: "Sign Up",
              action: () {
                Navigator.pushNamed(context, signUp);
              },
            ),
          ],
        ),
      ),
    );
  }
}
