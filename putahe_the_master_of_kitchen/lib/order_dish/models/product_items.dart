import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Spicy Seafood Shrimp",
    price: 99,
    description: dummyText,
    image: "assets/images/food_1.png",
    color: const Color(0xFFf99014),
    size: 1,
  ),
  Product(
    id: 2,
    title: "Pancit Bihon",
    price: 249,
    description: dummyText,
    image: "assets/images/food_2.png",
    color: const Color(0xFFF2AD27),
    size: 1,
  ),
  Product(
    id: 3,
    title: "Minced Pork Adobo",
    price: 119,
    description: dummyText,
    image: "assets/images/food_3.png",
    color: const Color(0xFFa54d1f),
    size: 1,
  ),
  Product(
    id: 4,
    title: "Egg Fried Rice",
    price: 89,
    description: dummyText,
    image: "assets/images/food_4.png",
    color: const Color(0xFFf6ce63),
    size: 1,
  ),
  Product(
    id: 5,
    title: "Pinoy Spaghetti",
    price: 149,
    description: dummyText,
    image: "assets/images/food_5.png",
    color: const Color(0xFF9d3225),
    size: 1,
  ),
  Product(
    id: 6,
    title: "Sinigang na Baboy",
    price: 129,
    description: dummyText,
    image: "assets/images/food_6.png",
    color: const Color(0xFFcbaa67),
    size: 1,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
