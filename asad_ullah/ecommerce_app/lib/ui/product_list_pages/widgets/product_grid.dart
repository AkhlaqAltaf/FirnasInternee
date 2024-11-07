import 'package:ecommerce_app/data/product.dart';
import 'package:ecommerce_app/ui/product_detail_page/widget/product_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../product_detail_page/product_detail.dart';

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
    final otherProducts = model.products
        .where((p) => p != product)
        .toList();
    return GestureDetector(
      onTap: () {
        final model = ScopedModel.of<ProductModel>(context);
        final product = model.products[productIndex];
        final otherProducts = model.products
            .where((p) => p != product)
            .toList();

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetails(
              selected_product: product,
              un_selected_products: otherProducts,
            ),
          ),
        );
      },
      child: Card(
        // clipBehavior : Clip.antiAliasWithSaveLayer,
        elevation: 90,
        shadowColor: Colors.lightGreenAccent,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                product.product_title,
                style: const TextStyle(
                    fontSize: 16.4, fontWeight: FontWeight.bold),
              ),
              Opacity(
                opacity: 0.80,
                alwaysIncludeSemantics: true,
                child: Image.asset(
                  product.product_imagepath,
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  Text(
                    'PKR : ${product.product_price}',
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.blue),
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
