import 'package:flutter/material.dart';
import 'package:demo/routes/path.dart';
import 'package:demo/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homework',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: homePath,
      routes: routes,
    );
  }
}
