// ignore_for_file: avoid_init_to_null

import 'package:flutter/material.dart';
import 'package:putahe/order_dish/constants.dart';
import 'package:putahe/order_dish/models/product_items.dart';
import 'package:putahe/order_dish/screens/details/details_screen.dart';

import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Select a dish you want to order",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  var key2 = null;
                  return ItemCard(
                    product: products[index],
                    press: () => Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        var key3 = null;
                        return DetailsScreen(
                          product: products[index],
                          key: key3,
                        );
                      },
                    )),
                    key: key2,
                  );
                }),
          ),
        ),
      ],
    );
  }
}
