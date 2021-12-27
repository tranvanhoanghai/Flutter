import 'package:flutter/material.dart';
import 'package:week8/components/background.dart';
import 'package:week8/constants/colors.dart';
import 'package:week8/routers/paths.dart';

class StartedScreen extends StatefulWidget {
  const StartedScreen({Key? key}) : super(key: key);

  @override
  _StartedScreenState createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
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
              const Text(
                'MediCue',
                style: TextStyle(fontSize: 40, color: iconColor),
              ),
              const Text(
                'Worry less..Live healthier..',
                style: TextStyle(fontSize: 16, color: greyColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("assets/images/clock.png"),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Welcome to MediCue!',
                style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                height: 74,
                minWidth: 266,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    logInScreen,
                  );
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                color: primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
