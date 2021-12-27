import 'package:flutter/material.dart';
import 'package:week8/screens/auths/login.dart';
import 'package:week8/screens/auths/sign_up.dart';
import 'package:week8/screens/home.dart';
import 'package:week8/screens/progress.dart';

 

final Map<String, WidgetBuilder> routes = {
  LoginScreen.path: (context) => const LoginScreen(),
  SignUpScreen.path: (context) => const SignUpScreen(),
  HomeScreen.path: (context) => const HomeScreen(),
  ProgressScreen.path: (context) => const ProgressScreen(),
};
