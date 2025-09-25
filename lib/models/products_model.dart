import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductsModel {
  final List<String> characters;
  final String image, title, description;
  final int price, size, id;
  final Color color;

  ProductsModel({required this.size, required this.image, required this.title, required this.description, required this.price, required this.id, required this.color, required this.characters});

  String getFormatedPrice() {
    final formatter = NumberFormat.currency(locale: 'de_DE', symbol: '€', decimalDigits: 2);
    return formatter.format(price);
  }
}