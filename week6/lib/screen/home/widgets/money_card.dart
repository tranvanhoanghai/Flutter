import 'package:flutter/material.dart';
import 'package:week6/constants/colors.dart';

class MoneyCart extends StatelessWidget {
  const MoneyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 142,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20.0),
          image: const DecorationImage(
            image: AssetImage('assets/icons/logo.png'),
            alignment: Alignment(-1, -0.5),
          ),
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
                SizedBox(
                  height: 65,
                ),
              ],
            ),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Row(
                  children: const [
                    Text(
                      'Yükleme yap',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: whiteColor,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_sharp,
                      color: whiteColor,
                      size: 20,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
