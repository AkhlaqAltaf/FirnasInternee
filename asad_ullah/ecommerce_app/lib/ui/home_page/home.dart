import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../data/product.dart';
import '../product_list_pages/widgets/product_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final model = ScopedModel.of<ProductModel>(context);
    final productIndex;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
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
                      radius: 60,
                      backgroundImage: AssetImage('assets/image/laptop.avif'),
                    )
                  ]),
            ),

            // List Items
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.shop),
              title: const Text(
                'Products',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/productlistpage');
              },
            ),

            const Divider(),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/loginpage');
              },
            ), // Optional: to separate items
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 200, // Adjust height based on the content
              child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    carouselItem('assets/image/slider/laptop.jpeg'),
                    carouselItem('assets/image/slider/laptop2.jpeg'),
                    carouselItem('assets/image/slider/T shirt.jpeg'),
                    carouselItem('assets/image/slider/car.avif'),
                  ],
                ),
            ),
          ),

          const SizedBox(height: 10),
          const Text("Sales on Products",
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
              textDirection: TextDirection.ltr,

          ),

          Expanded(
            child: ScopedModelDescendant<ProductModel>(
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
          )
        ],
      ),
    );
  }


  Widget carouselItem(String title) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Card(
        elevation: 15,
        shadowColor: Colors.lightGreen,
        margin: const EdgeInsets.all(8.0),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(12.0),
        // ),
        child:Image.asset(
            '$title',

        ),
      ),
    );
  }
}
