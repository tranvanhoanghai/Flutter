import 'package:flutter/material.dart';
import 'package:week2/models/list_cart.dart';
import 'package:week2/routers/path.dart';

import 'list_rate.dart';

class VerticalCart extends StatelessWidget {
  const VerticalCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.3,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: carts.length,
          itemBuilder: (BuildContext context, int index) {
            MyCart g = carts[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  productDetailPath,
                  arguments: carts[index],
                );
              },
              child: Container(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Container(
                  width: size.width,
                  height: size.height * 0.18,
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 1,
                      color: Color(0xFFDDE5E9),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(g.imageUrl),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              g.name,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF081D43),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              g.using,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF081D43),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Rating(),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              g.price,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF081D43),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
