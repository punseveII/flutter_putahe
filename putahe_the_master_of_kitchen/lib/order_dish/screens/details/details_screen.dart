// ignore_for_file: import_of_legacy_library_into_null_safe, avoid_init_to_null

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:putahe/order_dish/constants.dart';
import 'package:putahe/order_dish/models/product_items.dart';
import 'package:putahe/order_dish/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({required Key key, required this.product})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var key2 = null;
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
        key: key2,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
