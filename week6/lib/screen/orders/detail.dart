import 'package:flutter/material.dart';
import 'package:week6/components/header.dart';
import 'package:week6/constants/colors.dart';
import 'package:week6/routers/paths.dart';
import 'package:week6/screen/orders/widgets/bottom_order_detail.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);
  static String path = detailScreen;

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      appBar: AppBar(
        title: const HeaderAppBar(title: 'Ürün Detayı'),
        backgroundColor: Colors.white,
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
      bottomNavigationBar: const BottomBtnOrderDetail(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/Bg.png'),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Toffee Nut Frappuccino \n',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Text(
                  'Toffee nut syrup is blended with ice and milk, then topped with whipped cream and a delicious toffee nut flavoured topping.',
                  style: TextStyle(color: primaryGrey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
