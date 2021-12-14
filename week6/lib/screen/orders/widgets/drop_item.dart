import 'package:flutter/material.dart';
import 'package:week6/constants/colors.dart';

class DropItem extends StatefulWidget {
  const DropItem({Key? key, required this.isShow}) : super(key: key);

  final bool isShow;

  @override
  _DropItemState createState() => _DropItemState();
}

class _DropItemState extends State<DropItem> {
  String dropdownValue = 'Venty';
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isShow,
      child: Container(
        height: 30,
        width: widget.isShow ? 110 : 80,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: secondaryGrey,
          borderRadius: BorderRadius.circular(5),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            // isExpanded: true,
            value: dropdownValue,
            icon: const Icon(Icons.keyboard_arrow_down),
            elevation: 16,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['Venty', 'Venty1', 'Venty2', 'Venty3']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
