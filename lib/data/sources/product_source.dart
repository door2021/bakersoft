import 'package:sibol/data/models/product_model.dart';

abstract class ProductsSource {
  Future<List<ProductModel>> getProducts();
}