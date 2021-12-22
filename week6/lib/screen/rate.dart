import 'package:flutter/material.dart';
import 'package:week6/components/bottom_btn_order.dart';
import 'package:week6/components/header.dart';
import 'package:week6/constants/colors.dart';
import 'package:week6/routers/paths.dart';

class Rated extends StatefulWidget {
  const Rated({Key? key}) : super(key: key);

  static String path = ratedScreen;

  @override
  _RatedState createState() => _RatedState();
}

class _RatedState extends State<Rated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      appBar: AppBar(
        title: const HeaderAppBar(title: 'Sipariş Tamamlandı'),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: const BottomBtnOrder(
        url: homeScreen, title: 'Kapat',
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/Success.png'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Bizden sipariş verdiğiniz için \n teşekkürler! ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 500,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset('assets/images/Tebrikler.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset('assets/images/StarCard.png'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
