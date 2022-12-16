import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:sibol/core/cart_service.dart';
import 'package:bloc/bloc.dart';

import '../../../domain/entities/product_entity.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState>{
  final CartService service;

  CartCubit(this.service) : super(CartLoaded(service.cartItems));

  addToCart(ProductEntity item){
    service.addToCart(item);
  }

  removeFromCart(ProductEntity item) {
    service.removeFromCart(item);
  }

  clearProduct() {
    service.emptyCart();
  }

  List<ProductEntity> get cartItems => service.cartItems;
}