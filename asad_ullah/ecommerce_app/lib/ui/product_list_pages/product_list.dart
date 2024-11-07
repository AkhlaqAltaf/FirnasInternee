import 'package:ecommerce_app/data/product.dart';
// import 'package:cards_test/ui/login/login_page.dart';
import 'package:ecommerce_app/ui/product_list_pages/widgets/product_grid.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Theme.of(context).primaryColor,
      ),

      body: ScopedModelDescendant<ProductModel>(
        builder: (context, child, model) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.80,
            ),
            itemCount: model.products.length,
            itemBuilder: (context, index) {
              // final product = model.products[index];
              return ProductGrid(
                productIndex: index,
              );
            },
          );
        },
      ),
    );
  }
}
