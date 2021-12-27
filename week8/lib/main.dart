import 'package:flutter/material.dart';
import 'package:week8/screens/auths/started.dart';
import 'package:week8/routers/routers.dart';
// import 'package:week6/screen/login.dart';
//
// import 'constants/colors.dart';

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
        scaffoldBackgroundColor: const Color(0xFFf9ffff),
        splashColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            // color: Colors.black,
          ),
        ),
      ),
      home: const StartedScreen(),
      routes: routes,
    );
  }
}
