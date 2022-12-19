// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:putahe/order_dish/constants.dart';
import 'package:putahe/order_dish/models/product_items.dart';

import 'add_to_cart.dart';
import 'color_and_size.dart';
// import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({required Key key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // const counterWithFavBtn = CounterWithFavBtn(
    //   key: null,
    // );
    var key2;
    var key3;
    var key4;
    var key5;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.03,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(
                        product: product,
                        key: key5,
                      ),
                      const SizedBox(height: kDefaultPaddin / 2),
                      Description(
                        product: product,
                        key: key4,
                      ),
                      const SizedBox(height: kDefaultPaddin),
                      //counterWithFavBtn,
                      const SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(
                        product: product,
                        key: key2,
                      )
                    ],
                  ),
                ),
                ProductTitleWithImage(
                  product: product,
                  key: key3,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
