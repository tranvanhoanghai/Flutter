import 'package:flutter/material.dart';
import 'package:week6/components/bottom_btn_order.dart';
import 'package:week6/components/header.dart';
import 'package:week6/components/list_orders.dart';
import 'package:week6/components/tag_item.dart';
import 'package:week6/constants/colors.dart';
import 'package:week6/models/order_items.dart';
import 'package:week6/routers/paths.dart';
import 'package:week6/screen/orders/widgets/count_order.dart';
import 'package:week6/screen/orders/widgets/drop_item.dart';
import 'package:week6/screen/orders/widgets/order_option.dart';

class CheckOut extends StatefulWidget {
  static String path = checkoutScreen;

  const CheckOut({Key? key}) : super(key: key);

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      appBar: AppBar(
        title: const HeaderAppBar(title: 'Sipariş Detayı'),
        backgroundColor: Colors.white,
        // leading: ,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      bottomNavigationBar: const BottomBtnOrder(url: detailScreen, title: 'Öde',),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                  color: whiteColor,
                  child: const OrderOption(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                  constraints: const BoxConstraints(
                    minWidth: double.infinity,
                  ),
                  color: whiteColor,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Sipariş Listesi',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Add more',
                            style: TextStyle(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 130,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index) {
                            final orderItem = orderItems[index];
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Row(
                                  children: [
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      width: 86,
                                      height: 86,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                            context,
                                            detailScreen,
                                          );
                                        },
                                        child: const Image(
                                          image: AssetImage(
                                              'assets/images/item.png'),
                                          alignment: Alignment.center,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            orderItem.title,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
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
                                            children: const <Widget>[
                                              CountCart(isShow: true),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              DropItem(isShow: true),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 80,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              side: const BorderSide(
                                                  color: Colors.transparent),
                                              padding: const EdgeInsets.all(0),
                                              backgroundColor: primaryColor,
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              minimumSize: const Size(30, 30),
                                            ),
                                            onPressed: () {
                                              setState(() {});
                                            },
                                            child: Image.asset(
                                                'assets/icons/tick.png'),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 1,
                        color: secondaryGrey,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Total',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '20.000 TL',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                  color: whiteColor,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Ödeme Şekli',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: const [
                              Text(
                                'Yükleme yap',
                                style: TextStyle(color: secondaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_outlined,
                                size: 20,
                                color: secondaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 18),
                            height: 100,
                            width: 175,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(20.0),
                              image: const DecorationImage(
                                  image: AssetImage('assets/icons/logo.png'),
                                  fit: BoxFit.fill),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      'Toplam Param',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: whiteColor,
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: const [
                                        Text(
                                          '55,35 TL',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: whiteColor,
                                              fontSize: 30),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 19,
                            ),
                            height: 100,
                            width: 175,
                            decoration: BoxDecoration(
                              color: secondaryGrey,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 18,
                                ),
                                const Text(
                                  'Kredi \n Banka Kartı',
                                  style: TextStyle(
                                      fontSize: 18, color: primaryGrey),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 37,
                                      width: 37,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffB4BBCB),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
