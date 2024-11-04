import 'package:cards_test/ui/models/product_model.dart';
import 'package:scoped_model/scoped_model.dart';

class ProductModel extends Model {
  final List<Product> _products = List.generate(8, (index) {
    // List of titles and prices
    List<String> titles = [
      'Bed',
      'T Shirt',
      'Laptop',
      'Mobile Phone',
      'Glasses',
      'Shoes',
      'Charger',
      'Bags'
    ];
    List<int> prices = [1000, 5000, 7000, 8000, 4000, 3000, 9500, 2000];
    List<String> images = [
      'assets/image/i1.jpeg',
      'assets/image/i4.jpeg',
      'assets/image/laptop.avif',
      'assets/image/phone.jpeg',
      'assets/image/glasses.jpeg',
      'assets/image/shoes.jpeg',
      'assets/image/i1.webp',
      'assets/image/bag.jpeg'
    ];

    return Product(
      product_imagepath: images[index],
      product_title: titles[index],
      product_price: prices[index],
    );
  });

  List<Product> get products => _products;
}
