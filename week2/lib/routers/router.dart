import 'package:flutter/material.dart';
import 'package:week2/screens/export_screen.dart';

final Map<String, WidgetBuilder> routes = {

  '/introScreen': (BuildContext context) => const IntroducePage1(),
  '/introScreen2': (BuildContext context) => const IntroducePage2(),
  '/login': (BuildContext context) => const Login(),

};
