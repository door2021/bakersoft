import 'package:get_it/get_it.dart';
import 'package:sibol/app/bloc/product/product_bloc.dart';
import 'package:sibol/core/cart_service.dart';
import 'package:sibol/data/repositories/product_repository_implement.dart';
import 'package:sibol/data/sources/local/product_local_source.dart';
import 'package:sibol/data/sources/product_source.dart';
import 'package:sibol/domain/usecases/fetch_products.dart';

import '../app/bloc/cart/cart_cubit.dart';
import '../domain/repositories/product_repository.dart';

final x = GetIt.instance;

Future<void> init() async {
  x.registerFactory(() => ProductBloc(x()));

  x.registerFactory(() => CartCubit(x()));

  x.registerLazySingleton(() => CartService());

  x.registerLazySingleton(() => FetchProducts(x()));

  x.registerLazySingleton<ProductRepository>(() => ProductRepositoryImplement(x()));

  x.registerLazySingleton<ProductsSource>(() => ProductLocalSource());
}