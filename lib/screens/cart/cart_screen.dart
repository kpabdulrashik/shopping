import 'package:ShoppingApp/pages/CartPage.dart';
import 'package:flutter/material.dart';
import 'package:ShoppingApp/models/Cart.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartPage(),
    );
  }
}
