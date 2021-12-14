import 'package:flutter/material.dart';
import 'package:week6/routers/routers.dart';
import 'package:week6/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture Shop',
      theme: ThemeData(
          // splashColor: Colors.transparent,
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
      home: const Login(),
      routes: routes,
    );
  }
}
