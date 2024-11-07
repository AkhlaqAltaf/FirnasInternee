import 'package:flutter/material.dart';
import '../../models/product_model.dart';

class ProductDetails extends StatelessWidget {
  final Product selected_product;
  final List<Product> un_selected_products;

  const ProductDetails({
    super.key,
    required this.selected_product,
    required this.un_selected_products,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details of ${selected_product.product_title}'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView( // Wrap the entire body in SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Selected Product Details
              Card(
                elevation: 5,
                shadowColor: Colors.lightGreenAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      selected_product.product_imagepath,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      selected_product.product_title,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'PKR : ${selected_product.product_price}',
                      style: const TextStyle(
                          fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Other Products (Horizontal Scroll)
              Text(
                'Other Products',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: un_selected_products.map((product) {
                    return SizedBox(
                      height: 350,
                      width: 300,
                      child: Card(
                          margin: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  product.product_imagepath,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                product.product_title,
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'PKR: ${product.product_price}',
                                style: const TextStyle(fontSize: 12, color: Colors.blue),
                              ),
                            ],
                          ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
