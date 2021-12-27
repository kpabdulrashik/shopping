import 'package:ShoppingApp/constants.dart';
import 'package:ShoppingApp/controller/homePageController.dart';
import 'package:ShoppingApp/models/ItemModel.dart';
import 'package:ShoppingApp/pages/ItemDetail.dart';
import 'package:ShoppingApp/screens/home/components/home_header.dart';
import 'package:ShoppingApp/services/itemService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../size_config.dart';

class ProductHomePage extends StatefulWidget {
  const ProductHomePage({Key? key}) : super(key: key);

  @override
  _ProductHomePageState createState() => _ProductHomePageState();
}

class _ProductHomePageState extends State<ProductHomePage> {
  ItemServices itemServices = ItemServices();
  List<ShopItemModel> items = [];
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            Container(
              child: GetBuilder<HomePageController>(
                init: controller,
                builder: (_) => controller.isLoading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ShopItemListing(
                        items: controller.items,
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ShopItemListing extends StatelessWidget {
  final List<ShopItemModel> items;

  ShopItemListing({required this.items});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.8),
        itemBuilder: (BuildContext context, int index) {
          return ItemView(
            item: items[index],
          );
        },
        itemCount: items.length,
      ),
    );
  }
}

class ItemView extends StatelessWidget {
  final ShopItemModel item;

  ItemView({
    required this.item,
    this.width = 140,
    this.aspectRetio = 1.02,
  });

  final double width, aspectRetio;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
    //   child: SizedBox(
    //     width: getProportionateScreenWidth(width),
    //     child: GestureDetector(
    //       onTap: () {
    //         Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //                 builder: (context) => ItemDetailPage(itemId: item.id)));
    //       },
    //       child: Container(
    //         width: getProportionateScreenWidth(width),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             AspectRatio(
    //               aspectRatio: 1.02,
    //               child: Container(
    //                 padding: EdgeInsets.all(getProportionateScreenWidth(20)),
    //                 decoration: BoxDecoration(
    //                   color: kSecondaryColor.withOpacity(0.1),
    //                   borderRadius: BorderRadius.circular(15),
    //                 ),
    //                 child: Hero(
    //                   tag: item.id.toString(),
    //                   child: Image.network(
    //                     item.image,
    //                     fit: BoxFit.contain,
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(height: 10),
    //             Text(
    //               "${item.name}",
    //               style: TextStyle(color: Colors.black),
    //               maxLines: 2,
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text(
    //                   "\$${item.price.toString()}",
    //                   style: TextStyle(
    //                     fontSize: getProportionateScreenWidth(18),
    //                     fontWeight: FontWeight.w600,
    //                     color: kPrimaryColor,
    //                   ),
    //                 ),
    //                 InkWell(
    //                   borderRadius: BorderRadius.circular(50),
    //                   onTap: () {},
    //                   child: Container(
    //                     padding: EdgeInsets.all(getProportionateScreenWidth(8)),
    //                     height: getProportionateScreenWidth(28),
    //                     width: getProportionateScreenWidth(28),
    //                     decoration: BoxDecoration(
    //                       color: item.fav
    //                           ? kPrimaryColor.withOpacity(0.15)
    //                           : kSecondaryColor.withOpacity(0.1),
    //                       shape: BoxShape.circle,
    //                     ),
    //                     child: SvgPicture.asset(
    //                       "assets/icons/Heart Icon_2.svg",
    //                       color:
    //                           item.fav ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InkResponse(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ItemDetailPage(itemId: item.id)));
          },
          child: Material(
            child: Container(
                height: 380.0,
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 8.0)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 120.0,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: Image.network(
                                  item.image,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Container(
                              child: item.fav
                                  ? Icon(
                                      Icons.favorite,
                                      size: 20.0,
                                      color: Colors.red,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      size: 20.0,
                                    ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        "${item.name}",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Text(
                              "\$${item.price.toString()}",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          )),
    );
  }
}
