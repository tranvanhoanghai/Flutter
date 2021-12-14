import 'package:flutter/material.dart';
import 'package:week6/constants/colors.dart';
import 'package:week6/routers/paths.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'starbucks'.toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Color(0xff1D4D4F),
                      ),
                    ),
                    const Text('TM')
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Welcome back!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 300,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    const TextField(
                      style: TextStyle(height: 1, color: blackColor),
                      decoration: InputDecoration(
                        fillColor: whiteColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                          ),
                        ),
                        hintText: 'Email',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      style: const TextStyle(
                        height: 1,
                        color: blackColor,
                      ),
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        fillColor: whiteColor,
                        filled: true,
                        suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(
                              () {
                                _isObscure = !_isObscure;
                              },
                            );
                          },
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                          ),
                        ),
                        hintText: 'Password',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Forgot your password?',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  height: 55,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      homeScreen,
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  color: primaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
