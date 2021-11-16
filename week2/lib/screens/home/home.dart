import 'package:flutter/material.dart';
import 'package:week2/screens/home/widgets/header.dart';
import 'package:week2/screens/introduces/intro_page1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: IntroducePage1(
        ),
      ),
    );
  }
}
