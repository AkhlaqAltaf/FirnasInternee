import 'package:cards_test/data/product.dart';
import 'package:cards_test/ui/login/login_page.dart';
import 'package:cards_test/ui/product_list_pages/widgets/product_grid.dart';
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
    return  Scaffold(
      appBar: AppBar(
        title: const Text("User Profiles"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Drawer Header
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      child: Icon(
                        Icons.person, // Use the desired icon
                        size: 50, // Adjust icon size as needed
                        color: Colors.white, // Icon color
                      ),
                    ),
                  ]
              ),
            ),

            // List Items
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home',
                style: TextStyle(fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.shop),
              title: const Text('Product',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductListPage()),
                );
              },
            ),
            const Divider (),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Navigate to Settings page
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ), // Optional: to separate items
          ],
        ),
      ),
      body: ScopedModelDescendant<ProductModel>(
        builder: (context, child, model) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
            ),
            itemCount: model.products.length,
            itemBuilder: (context, index) {
              final product = model.products[index];
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
