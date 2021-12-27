import 'package:flutter/material.dart';
import 'package:week8/components/background.dart';
import 'package:week8/components/menu.dart';
import 'package:week8/constants/colors.dart';
import 'package:week8/routers/paths.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String path = homeScreen;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundScreen(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'LogOut',
                style: TextStyle(color: iconColor),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: iconColor,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Image.asset('assets/images/log-out.png'),
              ),
            ],
          ),
          elevation: 0.0,
          // bottomOpacity: 0.0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 55),
          child: Column(
            children: [
              const MenuItem(
                img: 'assets/images/schedule.png',
                title: 'Schedule the dose',
                subTitle: 'Schedule your reminders',
              ),
              const MenuItem(
                img: 'assets/images/notify.png',
                title: 'Reminders',
                subTitle: 'Keep track of reminders and get \n reminded on time',
              ),
              const MenuItem(
                img: 'assets/images/progress.png',
                title: 'Progress',
                subTitle: 'Keep track on your medication',
              ),
              const MenuItem(
                img: 'assets/images/family.png',
                title: 'Invite family and doctors',
                subTitle: 'Share your progress',
              ),
              const MenuItem(
                img: 'assets/images/advices.png',
                title: 'Received advices ',
                subTitle: 'Change the schedule as per the \n advices',
              ),
              Image.asset('assets/images/home.png'),
            ],
          ),
        ),
      ),
    );
  }
}
