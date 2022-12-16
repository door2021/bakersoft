import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

class ProductEntity{
  final int id;
  final String title;
  final String category;
  final String description;
  final String image;
  final double price;

  const ProductEntity({
    required this.id,
    required this.title,
    required this.category,
    required this.description,
    required this.image,
    required this.price,
  });
}