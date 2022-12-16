import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sibol/domain/entities/product_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel implements ProductEntity{
  const factory ProductModel({
    required int id,
    required String title,
    required String category,
    required String description,
    required String image,
    required double price,
  }) = _ProductModel;
  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}