import 'package:flutter/material.dart';
import 'package:week6/constants/colors.dart';

class CardBanner extends StatefulWidget {
  const CardBanner({Key? key}) : super(key: key);

  @override
  _CardBannerState createState() => _CardBannerState();
}

class _CardBannerState extends State<CardBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 6,
                decoration: BoxDecoration(
                  color: const Color(0xFFDFE4EC),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Text(
                'Kampanyalar',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: const [
                  Image(
                    image: AssetImage('assets/images/banner.png'),
                    alignment: Alignment.center,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Lorem Ipsum',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet gravida quam aliquam aenean fermentum non accumsan.',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
