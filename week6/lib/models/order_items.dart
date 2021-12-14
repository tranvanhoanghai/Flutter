import 'package:flutter/material.dart';
import 'package:week6/constants/colors.dart';

class OrderItems {
  final String title;
  final String subTitle;
  final ImageProvider image;
  final int quantily;
  final int id;
  late bool isShow;

    OrderItems({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.quantily,
    required this.id,
    required this.isShow,
  });
}

List<bool> selectedContacts = [true, false];
late List<OrderItems> orderItems = [
  OrderItems(
    id: 1,
    title: "Hazelnut Coffee",
    subTitle: "20 TL",
    image: AssetImage("assets/images/item.png"),
    quantily: 2,
    isShow: false,
  ),
  OrderItems(
    id: 2,
    title: "Caramel Frappucino",
    subTitle: "20 TL",
    image: AssetImage("assets/images/item.png"),
    quantily: 2,
    isShow: false,
  ),
  OrderItems(
    id: 3,
    title: "Mocha Frappuccino",
    subTitle: "20 TL",
    image: AssetImage("assets/images/item.png"),
    quantily: 1,
    isShow: false,
  ),
  OrderItems(
    id: 4,
    title: "Espresso Frappuccino",
    subTitle: "20 TL",
    image: AssetImage("assets/images/item.png"),
    quantily: 1,
    isShow: false,
  ),
  OrderItems(
    id: 5,
    title: "Hazelnut Coffee",
    subTitle: "20 TL",
    image: AssetImage("assets/images/item.png"),
    quantily: 2,
    isShow: false,
  ),
  OrderItems(
    id: 6,
    title: "Caramel Frappucino",
    subTitle: "20 TL",
    image: AssetImage("assets/images/item.png"),
    quantily: 2,
    isShow: false,
  ),
  OrderItems(
    id: 7,
    title: "Mocha Frappuccino",
    subTitle: "20 TL",
    image: AssetImage("assets/images/item.png"),
    quantily: 1,
    isShow: false,
  ),
  OrderItems(
    id: 8,
    title: "Espresso Frappuccino",
    subTitle: "20 TL",
    image: AssetImage("assets/images/item.png"),
    quantily: 1,
    isShow: false,
  ),
];
