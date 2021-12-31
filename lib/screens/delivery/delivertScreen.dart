import 'package:flutter/material.dart';

import 'componnents/deliveryBody.dart';

class DeliveryScreen extends StatelessWidget {
  static String routeName = "/delivery";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cash on Delivery"),
      ),
      body: DeliveryBody(),
    );
  }
}
