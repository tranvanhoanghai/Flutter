import 'package:flutter/material.dart';
import 'package:week2/models/list_cart.dart';
import 'package:week2/routers/path.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.27,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
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
                padding: const EdgeInsets.only(right: 15.0),
                child: Container(
                  width: size.width * 0.4,
                  height: size.height * 0.27,
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 1,
                      color: const Color(0xFFDDE5E9),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: size.width,
                          height: size.height * 0.19,
                          child: Image.asset(
                            g.imageUrl,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          g.name,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF081D43),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Image.asset('assets/images/icons/start.png'),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              g.rating,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFF081D43),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              g.price,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF081D43),
                              ),
                            ),
                          ],
                        )
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
