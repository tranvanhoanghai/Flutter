import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:week6/constants/colors.dart';
import 'package:week6/models/order_items.dart';
import 'package:week6/routers/paths.dart';
import 'package:week6/screen/orders/widgets/count_order.dart';
import 'package:week6/screen/orders/widgets/drop_item.dart';

class ListOrder extends StatefulWidget {
  const ListOrder({Key? key}) : super(key: key);

  @override
  _ListOrderState createState() => _ListOrderState();
}

class _ListOrderState extends State<ListOrder> {
  bool showEdit = false;
  int setId = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: orderItems.length,
      itemBuilder: (BuildContext context, int index) {
        final orderItem = orderItems[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Row(
              children: [
                const SizedBox(width: 5),
                const SizedBox(
                  width: 86,
                  height: 86,
                  child: Image(
                    image: AssetImage('assets/images/item.png'),
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        orderItem.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        orderItem.subTitle,
                        style: const TextStyle(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          // CountCart(
                          //     show: showEdit, id: orderItem.id, getId: setId),
                          CountCart(isShow: orderItems[index].isShow),
                          const SizedBox(
                            width: 10,
                          ),
                          DropItem(isShow: orderItems[index].isShow),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      orderItems[index].isShow
                          ? OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side:
                                    const BorderSide(color: Colors.transparent),
                                padding: const EdgeInsets.all(0),
                                backgroundColor: primaryColor,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                minimumSize: const Size(30, 30),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  checkoutScreen,
                                );
                                setState(() {
                                  showEdit = false;
                                  setId = orderItem.id;
                                  orderItems[index].isShow = false;
                                });
                              },
                              child: Image.asset('assets/icons/tick.png'),
                            )
                          : OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side:
                                    const BorderSide(color: Colors.transparent),
                                padding: const EdgeInsets.all(0),
                                backgroundColor: primaryColor,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                minimumSize: const Size(71, 30),
                              ),
                              onPressed: () {
                                setState(() {
                                  showEdit = true;
                                  setId = orderItem.id;
                                  orderItems[index].isShow = true;
                                });
                              },
                              child: const Text(
                                'Ekle',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
