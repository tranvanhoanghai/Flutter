import 'package:flutter/material.dart';
import 'package:week6/constants/colors.dart';

class OrderOption extends StatefulWidget {
  const OrderOption({Key? key}) : super(key: key);

  @override
  _OrderOptionState createState() => _OrderOptionState();
}

class _OrderOptionState extends State<OrderOption> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Gel Al Seçimi',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 14),
          decoration: BoxDecoration(
            border: Border.all(
              color: secondaryGrey,
              style: BorderStyle.solid,
              width: 1.0,
            ),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Paketinizi alma zamanı',
                    style: TextStyle(color: primaryGrey),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/icons/clock.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '13:00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const Expanded(
                    child: Text(
                      'Değiştir',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 14),
          decoration: BoxDecoration(
            border: Border.all(
              color: secondaryGrey,
              style: BorderStyle.solid,
              width: 1.0,
            ),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/icons/home-local.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Kadıköy, İstanbul',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const Expanded(
                    child: Text(
                      'Değiştir',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
