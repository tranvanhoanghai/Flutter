import 'package:flutter/material.dart';
import 'package:week2/constants/colors.dart';
import 'package:week2/screens/authen/register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: introduceBg,
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: const <Widget>[
                    Image(
                      image: AssetImage('assets/images/auths/login.png'),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  const TextField(
                    style: TextStyle(height: 1, color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.email_outlined, color: Colors.grey),
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
                  const SizedBox(height: 15),
                  TextField(
                    style: const TextStyle(height: 1, color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon:
                          const Icon(Icons.lock_outlined, color: Colors.grey),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                        ),
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        // onPressed: () {
                        //   // setState(() {
                        //   //   _show_Pass = !_show_Pass;
                        //   // });
                        // },
                        icon: const Icon(
                          Icons.remove_red_eye_outlined,
                          // color: _show_Pass
                          //     ? Colors.deepOrangeAccent
                          //     : Colors.green,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  MaterialButton(
                    height: 55,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      // widget.onNext('vc');
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    color: const Color(0xFFF7CA18),
                  ),
                  const SizedBox(height: 15),
                  const Center(
                      child: Text(
                    'Or login with',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  )),
                  const SizedBox(height: 15),
                  MaterialButton(
                    color: Colors.white,
                    height: 55,
                    minWidth: 360,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Image(
                            image:
                                AssetImage('assets/images/icons/gg_icon.png'),
                          ),
                        ),
                        Text(
                          'Google',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t have an account ?',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      TextButton(

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Register(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign Up', //title
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      )
                    ],
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
