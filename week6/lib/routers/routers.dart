import 'package:flutter/material.dart';
import 'package:week6/components/bottom_nav.dart';
import 'package:week6/screen/orders/detail.dart';
import 'package:week6/screen/home/home.dart';
import 'package:week6/screen/orders/check_out.dart';
import 'package:week6/screen/rate.dart';

final Map<String, WidgetBuilder> routes = {
  BottomNav.path: (context) => const BottomNav(),
  CheckOut.path: (context) => const CheckOut(),
  Detail.path: (context) => const Detail(),
  Rated.path: (context) => const Rated(),
};
