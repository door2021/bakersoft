import 'package:sibol/data/models/product_model.dart';
import 'package:sibol/data/sources/product_source.dart';
import 'package:sibol/domain/repositories/product_repository.dart';

class ProductRepositoryImplement implements ProductRepository {
  final ProductsSource source;

  ProductRepositoryImplement(this.source);

  @override
  Future<List<ProductModel>> getProducts() async {
    final products = await source.getProducts();

    return products;
  }
}