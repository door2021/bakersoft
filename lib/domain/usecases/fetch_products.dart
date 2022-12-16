import 'package:sibol/domain/entities/product_entity.dart';
import 'package:sibol/domain/repositories/product_repository.dart';
import 'package:sibol/domain/usecases/use_cases.dart';

class FetchProducts implements UseCase<ProductEntity, NoParams> {
  final ProductRepository repository;

  FetchProducts(this.repository);

  @override
  Future<List<ProductEntity>> call(NoParams params) async {
    return await repository.getProducts();
  }
}
