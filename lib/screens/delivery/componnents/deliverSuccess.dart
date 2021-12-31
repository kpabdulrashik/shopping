import 'package:flutter/material.dart';

import 'deliverSuccesPAge.dart';

class DeliverSuccessScreen extends StatelessWidget {
  static String routeName = "/deliver_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
      ),
      body: DeliverBody(),
    );
  }
}
