import 'package:flutter/material.dart';
import 'package:demo/screens/page_2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 15,
        runSpacing: 15,
        alignment: WrapAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(_creaRouteLefttoright());
            },
            child: const Text('Left to right'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.purpleAccent),
            onPressed: () {
              Navigator.of(context).push(_creaRouteRighttoleft());
            },
            child: const Text('Right to left'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
            onPressed: () {
              Navigator.of(context).push(_creaRouteToptoBottom());
            },
            child: const Text('Top to bottom'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.lightGreenAccent),
            onPressed: () {
              Navigator.of(context).push(_creaRouteBottomtotop());
            },
            child: const Text('Bottom to top'),
          ),
        ],
      ),
    );
  }
}

Route _creaRouteLefttoright() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(-1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;

        var curveTween = CurveTween(curve: curve);

        var tween = Tween(begin: begin, end: end).chain(curveTween);

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}

Route _creaRouteRighttoleft() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;

        var curveTween = CurveTween(curve: curve);

        var tween = Tween(begin: begin, end: end).chain(curveTween);

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}

Route _creaRouteBottomtotop() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;

        var curveTween = CurveTween(curve: curve);

        var tween = Tween(begin: begin, end: end).chain(curveTween);

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}

Route _creaRouteToptoBottom() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, -1.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;

        var curveTween = CurveTween(curve: curve);

        var tween = Tween(begin: begin, end: end).chain(curveTween);

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}
