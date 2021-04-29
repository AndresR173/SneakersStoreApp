import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sneaker.freezed.dart';
part 'sneaker.g.dart';

@freezed
abstract class Sneaker with _$Sneaker {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Sneaker({
    required String name,
    required String category,
    required String description,
    required double price,
    @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
        required Color background,
  }) = _Sneaker;

  factory Sneaker.fromJson(Map<String, dynamic> json) =>
      _$SneakerFromJson(json);
}

Color _colorFromJson(String color) => HexColor(color);

String _colorToJson(Color color) => color.toString();

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    var hColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hColor.length == 6) {
      hColor = 'FF$hColor';
    }
    return int.parse(hColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
