import 'package:flutter/material.dart';
import 'package:week8/constants/colors.dart';

class ProgressItem extends StatefulWidget {
  const ProgressItem(
      {Key? key, required this.day, required this.taken, required this.missed})
      : super(key: key);
  final String day;
  final double taken;
  final double missed;

  @override
  _ProgressItemState createState() => _ProgressItemState();
}

class _ProgressItemState extends State<ProgressItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.day,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: widget.taken,
                height: 60,
                child: const Align(
                  alignment: Alignment.center,
                  child: LinearProgressIndicator(
                    minHeight: 13,
                    value: 1,
                    backgroundColor: Color(0xFFB4B4B4),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    semanticsLabel: 'Linear progress indicator',
                  ),
                ),
              ),
              widget.missed == 0
                  ? SizedBox(
                      width: 250 - widget.taken,
                      height: 60,
                      child: const Align(
                        alignment: Alignment.center,
                        child: LinearProgressIndicator(
                          minHeight: 13,
                          backgroundColor: Color(0xFFB4B4B4),
                          value: 1,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xffE2E2E2)),
                          semanticsLabel: 'Linear progress indicator',
                        ),
                      ),
                    )
                  : SizedBox(
                      width: widget.missed,
                      height: 60,
                      child: const Align(
                        alignment: Alignment.center,
                        child: LinearProgressIndicator(
                          minHeight: 13,
                          backgroundColor: Color(0xFFB4B4B4),
                          value: 1,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                          semanticsLabel: 'Linear progress indicator',
                        ),
                      ),
                    ),
            ],
          )
        ],
      ),
    );
  }
}
