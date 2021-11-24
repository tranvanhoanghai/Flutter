import 'package:flutter/material.dart';

class Menus extends StatefulWidget {
  const Menus({Key? key}) : super(key: key);

  @override
  _MenusState createState() => _MenusState();
}

class _MenusState extends State<Menus> {
  int active = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final List<String> group = <String>[
      'Chair',
      'Table',
      'Bed',
      'Sofa',
      'Chair',
      'Table',
      'Bed',
      'Sofa',
      'Chair',
      'Table',
      'Bed',
      'Sofa'
    ];
    return SizedBox(
      height: 38,
      width: size.width,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: group.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: double.infinity,
              width: 87,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == active ? Colors.amber[600] : Color(0x00ffffff),
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    active = index;
                  });
                },
                child: Text(
                  group[index],
                  style: TextStyle(
                      color: index == active
                          ? const Color(0xFFFFFFFF)
                          : const Color(0xFF404040),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
