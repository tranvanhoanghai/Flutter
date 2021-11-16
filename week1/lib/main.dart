import 'package:flutter/material.dart';
import 'package:week1/routers/path.dart';
import 'package:week1/routers/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final appTitle = 'Home page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: homePath,
      routes: routes,
    );
  }
}





