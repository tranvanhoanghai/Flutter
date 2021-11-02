import 'package:flutter/material.dart';
import 'package:week1/routers/path.dart';

class FirstPage extends StatelessWidget {
  static String path = page1Path;

  const FirstPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: const Center(
        child: Text('I belongs to First Page'),
      ),
    );
  }
}
