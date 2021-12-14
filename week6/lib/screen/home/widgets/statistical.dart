import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:week6/constants/colors.dart';

class Statistical extends StatefulWidget {
  const Statistical({Key? key}) : super(key: key);

  @override
  _StatisticalState createState() => _StatisticalState();
}

class _StatisticalState extends State<Statistical> {
  static double maxValue = 15;
  static double minValue = 0;
  static const double value = 6;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20 ),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                width: 140,
                height: 140,
                child: SfRadialGauge(
                  axes: <RadialAxis>[
                    RadialAxis(
                      canScaleToFit: false,
                      minimum: minValue,
                      maximum: maxValue,
                      showLabels: false,
                      showTicks: false,
                      axisLineStyle: const AxisLineStyle(
                        thickness: 0.1,
                        color: Color(0xFF749193),
                        thicknessUnit: GaugeSizeUnit.factor,
                      ),
                      pointers: const <GaugePointer>[
                        RangePointer(
                          value: value,
                          // sizeUnit: GaugeSizeUnit.factor,
                          width: 13,
                          color: secondaryColor,
                          pointerOffset: -3,
                        ),
                      ],
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                          positionFactor: 0.1,
                          angle: 90,
                          widget: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset("assets/icons/bottle_L.png"),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                value.toStringAsFixed(0) +
                                    '/' +
                                    maxValue.toStringAsFixed(0),
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: secondaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
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
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icons/star.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '0',
                              style: TextStyle(
                                fontSize: 30,
                                color: secondaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              'Yıldız bakiyesi',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icons/bottle_S.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: secondaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              'İkram içecek',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      height: 40,
                      minWidth: 90,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      onPressed: () {},
                      child: const Text(
                        'Detaylar',
                        style: TextStyle(
                          fontSize: 15,
                          color: blackColor,
                        ),
                      ),
                      color: const Color(0xFFDFE4EC),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
