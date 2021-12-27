import 'package:ShoppingApp/components/coustom_bottom_nav_bar.dart';
import 'package:ShoppingApp/screens/productlist/productHomePage.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';

class ProductHome extends StatelessWidget {
  static String routeName = "/producthome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductHomePage(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
