import 'package:flutter/material.dart';
import 'package:week4/route/path.dart';

class Order extends StatefulWidget {
  static String path = orderScreen;

  const Order({Key? key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int state = 0;
  final tabs = [
    "Complete Order",
    "Pending Order",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Order",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFDDE5E9),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (int index = 0; index < tabs.length; index++)
                      InkWell(
                        onTap: () {
                          setState(() {
                            state = index;
                          });
                        },
                        child: Tab(tabs[index], index),
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: state == 0 ? _items.length : 2,
                itemBuilder: (BuildContext context, int index) {
                  final item = _items[index];
                  return Container(
                    height: 106,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: item.image,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item.title,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\$${item.price}",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(item.subtitle),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/spicy.png",
                                    height: 15,
                                    width: 15,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Text(item.spicy),
                                  ),
                                  Text(
                                    item.order,
                                    style: TextStyle(
                                      color: Color(0xfffd8564),
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Tab(String title, index) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: state == index ? Color(0xfffd8564) : Color(0xff404040),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        if (state == index)
          Container(
            width: 80,
            height: 2,
            color: Color(0xfffd8564),
          ),
      ],
    );
  }
}

List<Items> _items = [
  Items(
    price: 59,
    order: "Order Again",
    image: AssetImage("assets/images/im1.png"),
    title: "4 Item from KFC",
    subtitle: "Pizza, Alo Bortha, Thehul acar, Chiken tiriaky",
    spicy: "Spicy",
  ),
  Items(
    price: 59,
    order: "Order Again",
    image: AssetImage("assets/images/im2.png"),
    title: "4 Item from KFC",
    subtitle: "Pizza, Alo Bortha, Thehul acar, Chiken tiriaky",
    spicy: "Spicy",
  ),

];

class Items {
  final ImageProvider image;
  final String title;
  final String subtitle;
  final String spicy;
  final int price;
  final String order;

  Items({
    required this.price,
    required this.order,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.spicy,
  });
}
