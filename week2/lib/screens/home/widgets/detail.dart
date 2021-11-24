import 'package:flutter/material.dart';
import 'package:week2/models/list_cart.dart';
import 'package:week2/routers/path.dart';

import 'cart_count.dart';

class ProductDetailScreen extends StatefulWidget {
  static String path = productDetailPath;
  const ProductDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final product = ModalRoute.of(context)!.settings.arguments as MyCart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Detail',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/images/icons/back.png'),
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/icons/heart.png'),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: size.width,
              height: size.height * 0.5,
              child: Image.asset(
                product.imageUrl,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color(0xFFF6F9FF),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Divider(
                      indent: size.width * 0.3,
                      endIndent: size.width * 0.3,
                      thickness: 3,
                      color: Color(0xFFC7C9D9),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              product.name,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              product.using,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const CartCounter(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Blandit in nunc, et sit velit at aliquam tortor. Tristique ut ante nec nullam urna. Ultrices ac lorem rutrum purus. Nunc.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        const Text(
                          'Color',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Color(0xFF121214),
                          ),
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Color(0xFF670B00),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Color(0xFFA8A6A7),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Total ' + product.price,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(const Color(0xFFF2A213)),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(vertical: 15, horizontal: 130),
                        ),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
