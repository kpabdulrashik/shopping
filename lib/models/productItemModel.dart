import 'dart:ui';

var productData = [
  {
    "id": 1,
    "images": "assets/images/ps4_console_white_1.png",
    "colors": Color(0xFFF6625E),
    "title": "Wireless Controller for PS4™",
    "price": 64.99,
    "description": "description",
    "rating": 4.8,
    "isFavourite": true,
    "isPopular": true,
  },
  {
    "id": 2,
    "images": [
      "assets/images/Image Popular Product 2.png",
    ],
    'colors': Color(0xFFDECB9C),
    "title": "Nike Sport White - Man Pant",
    "price": 50.5,
    "description": "description",
    "rating": 4.1,
    "isPopular": true,
  },
  {
    "id": 3,
    "images": "assets/images/glap.png",
    "colors": Color(0xFFF6625E),
    "title": "Men shirts",
    "price": 36.55,
    "description": "description",
    "rating": 4.1,
    "isFavourite": true,
    "isPopular": true,
  },
  {
    "id": 4,
    "images": [
      "assets/images/wireless headset.png",
    ],
    "colors": Color(0xFFDECB9C),
    "title": "Logitech Head",
    "price": 20.20,
    "description": "description",
    "rating": 4.1,
    "isFavourite": true,
  }
];

class Product {
  late int id;
  late String title, description;
  late List<String> images;
  late List<Color> colors;
  late double rating, price;
  late bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      images: json['images'],
      colors: json['colors'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
    );
  }
}

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
