// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sneaker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sneaker _$_$_SneakerFromJson(Map<String, dynamic> json) {
  return _$_Sneaker(
    name: json['name'] as String,
    category: json['category'] as String,
    description: json['description'] as String,
    price: (json['price'] as num).toDouble(),
    background: _colorFromJson(json['background'] as String),
  );
}

Map<String, dynamic> _$_$_SneakerToJson(_$_Sneaker instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'description': instance.description,
      'price': instance.price,
      'background': _colorToJson(instance.background),
    };
