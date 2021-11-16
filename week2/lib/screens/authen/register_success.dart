import 'package:flutter/material.dart';

class RegisterSuccess extends StatelessWidget {
  const RegisterSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: const [
                      Image(
                        image:
                            AssetImage('assets/images/auths/reg_done.png'),
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
                // widget.onNext('vc');
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
        ));
  }
}
