import 'package:flutter/material.dart';
import 'package:week6/constants/colors.dart';
import 'package:week6/routers/paths.dart';

import 'count_order.dart';

class BottomBtnOrderDetail extends StatefulWidget {
  const BottomBtnOrderDetail({Key? key}) : super(key: key);

  @override
  _BottomBtnOrderDetailState createState() => _BottomBtnOrderDetailState();
}

class _BottomBtnOrderDetailState extends State<BottomBtnOrderDetail> {
  int _itemCount = 1;
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: Container(
          height: 250,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          padding: const EdgeInsets.only(
              left: 29.0, right: 29.0, top: 50, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '24,50 TL',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        constraints:
                            const BoxConstraints(minHeight: 40, minWidth: 182),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: secondaryGrey,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 24,
                              height: 24,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: Colors.transparent),
                                  padding: const EdgeInsets.all(0),
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (_itemCount > 1) {
                                      _itemCount--;
                                    }
                                  });
                                },
                                child: const Icon(
                                  Icons.remove,
                                  color: blackColor,
                                  size: 20,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Text('$_itemCount'),
                            const SizedBox(
                              width: 50,
                            ),
                            SizedBox(
                              width: 24,
                              height: 24,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: Colors.transparent),
                                  padding: const EdgeInsets.all(0),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _itemCount++;
                                  });
                                },
                                child: const Icon(
                                  Icons.add,
                                  color: blackColor,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/icons/size_S.png'),
                            Image.asset('assets/icons/size_M.png'),
                            Image.asset('assets/icons/size_L.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.transparent),
                  backgroundColor: primaryColor,
                  minimumSize: const Size(double.infinity, 55),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ratedScreen,
                  );
                },
                child: const Text(
                  'Satın Al',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
