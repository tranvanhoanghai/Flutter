import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: item.length,
      itemBuilder: (BuildContext context, int index) {
        final items = item[index];
        return Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          color: const Color(0xfff8f8f8),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            horizontalTitleGap: 20,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: items.image,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(items.title),
            subtitle: Text(items.subTitle),
            trailing: Image(
              image: items.imgIcon,
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

const List<Items> item = [
  Items(
    title: "Hungry Station",
    subTitle: "Jail road, Zinda Bazar, Sylhet",
    image: AssetImage("assets/images/im1.png"),
    imgIcon: AssetImage("assets/images/i1.png"),
  ),
  Items(
    title: "Artisan Coffee Shop",
    subTitle: "Mira bazar. Sylhet",
    image: AssetImage("assets/images/im2.png"),
    imgIcon: AssetImage("assets/images/i2.png"),
  ),
  Items(
    title: "KFC",
    subTitle: "Zindabazar road, Sylhet",
    image: AssetImage("assets/images/im3.png"),
    imgIcon: AssetImage("assets/images/i3.png"),
  ),
];

@immutable
class Items {
  final String title;
  final String subTitle;
  final ImageProvider image;
  final ImageProvider imgIcon;

  const Items({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.imgIcon,
  });
}
