import 'package:flutter/material.dart';
import 'package:tintin_app/models/products_model.dart';
import 'package:tintin_app/utils/consts.dart';

class CharactersList extends StatelessWidget {
  final ProductsModel product;

  const CharactersList({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Characters", style: TextStyle(color: textColor)),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:[
                    for (var item in product.characters)
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Image.asset(item, width: 40, height: 40),
                      ),
                  ]
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
