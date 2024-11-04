import 'package:cards_test/data/product.dart';
import 'package:cards_test/ui/login/login_page.dart';
import 'package:cards_test/ui/login/signup.dart';
import 'package:cards_test/ui/home_page/home.dart';
// import 'package:cards_test/ui/models/product_model.dart';
import 'package:cards_test/ui/product_list_pages/product_list.dart';
// import 'package:cards_test/ui/product_list_pages/widgets/product_grid.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScopedModel(
      model: ProductModel(),
      child: MaterialApp(
          title: 'Contact App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const ProductListPage()
      ),
    );
  }
}
