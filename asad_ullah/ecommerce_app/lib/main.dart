import 'package:ecommerce_app/data/product.dart';
import 'package:ecommerce_app/ui/home_page/home.dart';
import 'package:ecommerce_app/ui/login/login_page.dart';
import 'package:ecommerce_app/ui/login/signup_page.dart';
import 'package:ecommerce_app/ui/product_list_pages/product_list.dart';
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
        // setting the routes of all pages
        routes: {
          '/productlistpage': (context) => const ProductListPage(),
          '/loginpage': (context) => const LoginPage(),
          '/signup': (context) => const SignUpPage(),
        },
        home: const HomePage(),
      ),
    );
  }
}
