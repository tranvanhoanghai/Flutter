class MyCart {
  String id;
  String imageUrl;
  String name;
  String rating;
  String price;
  String using;
  String type;

  MyCart({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.price,
    required this.using,
    required this.type,
  });
}

List<MyCart> carts = [
  MyCart(
    id: '1',
    imageUrl: 'assets/images/products/product_1.png',
    name: 'Cartier Jaw',
    rating: '4.9',
    price: 'Rp.99.999',
    using: 'Relex, Comfortable',
    type: 'chair',
  ),
  MyCart(
    id: '2',
    imageUrl: 'assets/images/products/product_2.png',
    name: 'Mia Boutique',
    rating: '4.9',
    price: 'Rp.89.999',
    using: 'Chill, Comfortable',
    type: 'chair',
  ),
  MyCart(
    id: '3',
    imageUrl: 'assets/images/products/product_3.png',
    name: 'Faker Chair',
    rating: '4.9',
    price: 'Rp.79.999',
    using: 'Relex, Comfortable',
    type: 'chair',
  ),
  MyCart(
    id: '4',
    imageUrl: 'assets/images/products/product_4.png',
    name: 'Mixi Moi Chair',
    rating: '4.9',
    price: 'Rp.69.999',
    using: 'Rich, Comfortable',
    type: 'chair',
  ),
  MyCart(
    id: '5',
    imageUrl: 'assets/images/products/product_5.png',
    name: 'Toi Sung Chair',
    rating: '4.9',
    price: 'Rp.59.999',
    using: 'Relex, Comfortable',
    type: 'chair',
  ),
  // MyCart(
  //   id: '6',
  //   imageUrl: 'assets/images/products/table1.png',
  //   name: 'King Chair',
  //   rating: '4.9',
  //   price: 'Rp.49.999',
  //   using: 'Rich, Comfortable',
  //   type: 'table',
  // ),
  // MyCart(
  //   id: '7',
  //   imageUrl: 'assets/images/products/table2.png',
  //   name: 'Gaming Desk',
  //   rating: '4.9',
  //   price: 'Rp.39.999',
  //   using: 'Chill, Comfortable',
  //   type: 'table',
  // ),
  // MyCart(
  //   id: '8',
  //   imageUrl: 'assets/images/products/table3.png',
  //   name: 'Z Desk',
  //   rating: '4.9',
  //   price: 'Rp.29.999',
  //   using: 'Relex, Comfortable',
  //   type: 'table',
  // ),
  // MyCart(
  //   id: '9',
  //   imageUrl: 'assets/images/products/table4.png',
  //   name: 'V Desk',
  //   rating: '4.9',
  //   price: 'Rp.19.999',
  //   using: 'Rich, Comfortable',
  //   type: 'table',
  // ),
  // MyCart(
  //   id: '10',
  //   imageUrl: 'assets/images/products/table5.png',
  //   name: '3 Legs Desk',
  //   rating: '4.9',
  //   price: 'Rp.09.999',
  //   using: 'Child, Comfortable',
  //   type: 'table',
  // ),
];
