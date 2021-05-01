// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sneaker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sneaker _$SneakerFromJson(Map<String, dynamic> json) {
  return _Sneaker.fromJson(json);
}

/// @nodoc
class _$SneakerTearOff {
  const _$SneakerTearOff();

  _Sneaker call(
      {required int id,
      required String name,
      required String category,
      required String description,
      required double price,
      required List<String> gallery,
      @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
          required Color background}) {
    return _Sneaker(
      id: id,
      name: name,
      category: category,
      description: description,
      price: price,
      gallery: gallery,
      background: background,
    );
  }

  Sneaker fromJson(Map<String, Object> json) {
    return Sneaker.fromJson(json);
  }
}

/// @nodoc
const $Sneaker = _$SneakerTearOff();

/// @nodoc
mixin _$Sneaker {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  List<String> get gallery => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
  Color get background => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SneakerCopyWith<Sneaker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SneakerCopyWith<$Res> {
  factory $SneakerCopyWith(Sneaker value, $Res Function(Sneaker) then) =
      _$SneakerCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String category,
      String description,
      double price,
      List<String> gallery,
      @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
          Color background});
}

/// @nodoc
class _$SneakerCopyWithImpl<$Res> implements $SneakerCopyWith<$Res> {
  _$SneakerCopyWithImpl(this._value, this._then);

  final Sneaker _value;
  // ignore: unused_field
  final $Res Function(Sneaker) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? gallery = freezed,
    Object? background = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      gallery: gallery == freezed
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>,
      background: background == freezed
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$SneakerCopyWith<$Res> implements $SneakerCopyWith<$Res> {
  factory _$SneakerCopyWith(_Sneaker value, $Res Function(_Sneaker) then) =
      __$SneakerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String category,
      String description,
      double price,
      List<String> gallery,
      @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
          Color background});
}

/// @nodoc
class __$SneakerCopyWithImpl<$Res> extends _$SneakerCopyWithImpl<$Res>
    implements _$SneakerCopyWith<$Res> {
  __$SneakerCopyWithImpl(_Sneaker _value, $Res Function(_Sneaker) _then)
      : super(_value, (v) => _then(v as _Sneaker));

  @override
  _Sneaker get _value => super._value as _Sneaker;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? gallery = freezed,
    Object? background = freezed,
  }) {
    return _then(_Sneaker(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      gallery: gallery == freezed
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>,
      background: background == freezed
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Sneaker implements _Sneaker {
  const _$_Sneaker(
      {required this.id,
      required this.name,
      required this.category,
      required this.description,
      required this.price,
      required this.gallery,
      @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
          required this.background});

  factory _$_Sneaker.fromJson(Map<String, dynamic> json) =>
      _$_$_SneakerFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String category;
  @override
  final String description;
  @override
  final double price;
  @override
  final List<String> gallery;
  @override
  @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
  final Color background;

  @override
  String toString() {
    return 'Sneaker(id: $id, name: $name, category: $category, description: $description, price: $price, gallery: $gallery, background: $background)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sneaker &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.gallery, gallery) ||
                const DeepCollectionEquality()
                    .equals(other.gallery, gallery)) &&
            (identical(other.background, background) ||
                const DeepCollectionEquality()
                    .equals(other.background, background)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(gallery) ^
      const DeepCollectionEquality().hash(background);

  @JsonKey(ignore: true)
  @override
  _$SneakerCopyWith<_Sneaker> get copyWith =>
      __$SneakerCopyWithImpl<_Sneaker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SneakerToJson(this);
  }
}

abstract class _Sneaker implements Sneaker {
  const factory _Sneaker(
      {required int id,
      required String name,
      required String category,
      required String description,
      required double price,
      required List<String> gallery,
      @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
          required Color background}) = _$_Sneaker;

  factory _Sneaker.fromJson(Map<String, dynamic> json) = _$_Sneaker.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  List<String> get gallery => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
  Color get background => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SneakerCopyWith<_Sneaker> get copyWith =>
      throw _privateConstructorUsedError;
}
