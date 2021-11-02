import 'package:flutter/material.dart';
import 'package:week1/routers/path.dart';

class SecondPage extends StatelessWidget {
  static String path = page2Path;

  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: const Center(
        child: Text('I belongs to Second Page'),
      ),
    );
  }
}
