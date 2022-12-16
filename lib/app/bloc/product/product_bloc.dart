import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sibol/domain/usecases/fetch_products.dart';
import 'package:sibol/domain/usecases/use_cases.dart';

import '../../../domain/entities/product_entity.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final FetchProducts useCases;

  ProductBloc(this.useCases) : super(const ProductInitial()) {
    on<ProductEventStart>(getProduct);
  }

  Future<void> getProduct(event, emit) async {
    emit(const ProductState.loading());

    var product = await useCases(NoParams());

    emit(ProductState.loaded(product));
  }
}

