import 'package:cards_test/data/product.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ProductGrid extends StatelessWidget {
  final int productIndex;

  const ProductGrid({
    super.key,
    required this.productIndex,
  });

  @override
  Widget build(BuildContext context) {
    final model = ScopedModel.of<ProductModel>(context);
    final product = model.products[productIndex];

    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                product.product_title,
                style:
                    const TextStyle(fontSize: 16.4, fontWeight: FontWeight.bold),
              ),
              Opacity(
                opacity: 0.90,
                alwaysIncludeSemantics: true,
                child: Image.asset(
                  product.product_imagepath,
                  height:195,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  Text(
                    'PKR : ${product.product_price}           ',
                    style: const TextStyle(fontWeight:FontWeight.bold, fontSize: 14, color: Colors.blue),
                  ),
                  IconButton(
                    onPressed: () => {print("Favorite Icon Clicked")},
                    icon: const Icon(Icons.star_border),
                  ),
              ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
