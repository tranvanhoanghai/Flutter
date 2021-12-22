import 'package:flutter/material.dart';
import 'package:week6/routers/routers.dart';
import 'package:week6/screen/login.dart';

import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StartBucks',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: blackColor,
          ),
        ),
      ),
      home: const Login(),
      routes: routes,
    );
  }
}
