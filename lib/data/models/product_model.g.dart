// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int,
      title: json['title'] as String,
      category: json['category'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category': instance.category,
      'description': instance.description,
      'image': instance.image,
      'price': instance.price,
    };
