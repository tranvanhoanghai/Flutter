import 'package:week4/screen/forgot_pass.dart';
import 'package:week4/screen/home/home.dart';
import 'package:week4/screen/introduce.dart';
import 'package:week4/screen/order.dart';
import 'package:week4/screen/sign_in.dart';
import 'package:week4/screen/sign_up.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  Home.path: (context) => const Home(),
  IntroPage.path: (context) => const IntroPage(),
  SignIn.path: (context) => const SignIn(),
  SignUp.path: (context) => const SignUp(),
  ForgotPass.path: (context) => const ForgotPass(),
  Order.path: (context) => const Order(),
};
