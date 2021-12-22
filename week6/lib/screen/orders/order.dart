import 'package:flutter/material.dart';
import 'package:week6/components/header.dart';
import 'package:week6/components/list_orders.dart';
import 'package:week6/components/tag_item.dart';
import 'package:week6/constants/colors.dart';
import 'package:week6/screen/orders/widgets/order_option.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _tagItem = [
      const TagItem(title: 'Çok Satanlar'),
      const TagItem(title: 'Yiyecek'),
      const TagItem(title: 'Yeniler'),
      const TagItem(title: 'Kahveler'),
    ];

    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      appBar: AppBar(
        title: const HeaderAppBar(title: 'Sipariş Yarat'),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Menu',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TabBar(
                        labelPadding: const EdgeInsets.symmetric(horizontal: 5),
                        controller: tabController,
                        indicator: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: secondaryGrey),
                        labelColor: blackColor,
                        unselectedLabelColor: blackColor,
                        indicatorSize: TabBarIndicatorSize.label,
                        isScrollable: true,
                        tabs: _tagItem,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        height: 400,
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            const ListOrder(),
                            Container(
                              height: 100,
                              color: Colors.orange,
                            ),
                            Container(
                              height: 100,
                              color: Colors.orange,
                            ),
                            Container(
                              height: 100,
                              color: Colors.orange,
                            ),
                          ],
                        ),
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
