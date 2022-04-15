// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nutrients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NutrientsModel _$NutrientsModelFromJson(Map<String, dynamic> json) {
  return _NutrientsModel.fromJson(json);
}

/// @nodoc
class _$NutrientsModelTearOff {
  const _$NutrientsModelTearOff();

  _NutrientsModel call(
      {int id = 0,
      double energy = 0.0,
      double carbohydrates = 0.0,
      double fat = 0.0,
      double protein = 0.0,
      double salt = 0.0,
      @JsonKey(name: 'saturated_fat') double saturatedFat = 0.0,
      double sugar = 0.0,
      @JsonKey(name: 'fk_productid') int productId = 0}) {
    return _NutrientsModel(
      id: id,
      energy: energy,
      carbohydrates: carbohydrates,
      fat: fat,
      protein: protein,
      salt: salt,
      saturatedFat: saturatedFat,
      sugar: sugar,
      productId: productId,
    );
  }

  NutrientsModel fromJson(Map<String, Object?> json) {
    return NutrientsModel.fromJson(json);
  }
}

/// @nodoc
const $NutrientsModel = _$NutrientsModelTearOff();

/// @nodoc
mixin _$NutrientsModel {
  int get id => throw _privateConstructorUsedError;
  double get energy => throw _privateConstructorUsedError;
  double get carbohydrates => throw _privateConstructorUsedError;
  double get fat => throw _privateConstructorUsedError;
  double get protein => throw _privateConstructorUsedError;
  double get salt => throw _privateConstructorUsedError;
  @JsonKey(name: 'saturated_fat')
  double get saturatedFat => throw _privateConstructorUsedError;
  double get sugar => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_productid')
  int get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutrientsModelCopyWith<NutrientsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientsModelCopyWith<$Res> {
  factory $NutrientsModelCopyWith(
          NutrientsModel value, $Res Function(NutrientsModel) then) =
      _$NutrientsModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      double energy,
      double carbohydrates,
      double fat,
      double protein,
      double salt,
      @JsonKey(name: 'saturated_fat') double saturatedFat,
      double sugar,
      @JsonKey(name: 'fk_productid') int productId});
}

/// @nodoc
class _$NutrientsModelCopyWithImpl<$Res>
    implements $NutrientsModelCopyWith<$Res> {
  _$NutrientsModelCopyWithImpl(this._value, this._then);

  final NutrientsModel _value;
  // ignore: unused_field
  final $Res Function(NutrientsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? energy = freezed,
    Object? carbohydrates = freezed,
    Object? fat = freezed,
    Object? protein = freezed,
    Object? salt = freezed,
    Object? saturatedFat = freezed,
    Object? sugar = freezed,
    Object? productId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      energy: energy == freezed
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrates: carbohydrates == freezed
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as double,
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      salt: salt == freezed
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as double,
      saturatedFat: saturatedFat == freezed
          ? _value.saturatedFat
          : saturatedFat // ignore: cast_nullable_to_non_nullable
              as double,
      sugar: sugar == freezed
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as double,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$NutrientsModelCopyWith<$Res>
    implements $NutrientsModelCopyWith<$Res> {
  factory _$NutrientsModelCopyWith(
          _NutrientsModel value, $Res Function(_NutrientsModel) then) =
      __$NutrientsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      double energy,
      double carbohydrates,
      double fat,
      double protein,
      double salt,
      @JsonKey(name: 'saturated_fat') double saturatedFat,
      double sugar,
      @JsonKey(name: 'fk_productid') int productId});
}

/// @nodoc
class __$NutrientsModelCopyWithImpl<$Res>
    extends _$NutrientsModelCopyWithImpl<$Res>
    implements _$NutrientsModelCopyWith<$Res> {
  __$NutrientsModelCopyWithImpl(
      _NutrientsModel _value, $Res Function(_NutrientsModel) _then)
      : super(_value, (v) => _then(v as _NutrientsModel));

  @override
  _NutrientsModel get _value => super._value as _NutrientsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? energy = freezed,
    Object? carbohydrates = freezed,
    Object? fat = freezed,
    Object? protein = freezed,
    Object? salt = freezed,
    Object? saturatedFat = freezed,
    Object? sugar = freezed,
    Object? productId = freezed,
  }) {
    return _then(_NutrientsModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      energy: energy == freezed
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrates: carbohydrates == freezed
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as double,
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      salt: salt == freezed
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as double,
      saturatedFat: saturatedFat == freezed
          ? _value.saturatedFat
          : saturatedFat // ignore: cast_nullable_to_non_nullable
              as double,
      sugar: sugar == freezed
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as double,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutrientsModel extends _NutrientsModel {
  const _$_NutrientsModel(
      {this.id = 0,
      this.energy = 0.0,
      this.carbohydrates = 0.0,
      this.fat = 0.0,
      this.protein = 0.0,
      this.salt = 0.0,
      @JsonKey(name: 'saturated_fat') this.saturatedFat = 0.0,
      this.sugar = 0.0,
      @JsonKey(name: 'fk_productid') this.productId = 0})
      : super._();

  factory _$_NutrientsModel.fromJson(Map<String, dynamic> json) =>
      _$$_NutrientsModelFromJson(json);

  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final double energy;
  @JsonKey()
  @override
  final double carbohydrates;
  @JsonKey()
  @override
  final double fat;
  @JsonKey()
  @override
  final double protein;
  @JsonKey()
  @override
  final double salt;
  @override
  @JsonKey(name: 'saturated_fat')
  final double saturatedFat;
  @JsonKey()
  @override
  final double sugar;
  @override
  @JsonKey(name: 'fk_productid')
  final int productId;

  @override
  String toString() {
    return 'NutrientsModel(id: $id, energy: $energy, carbohydrates: $carbohydrates, fat: $fat, protein: $protein, salt: $salt, saturatedFat: $saturatedFat, sugar: $sugar, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NutrientsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.energy, energy) &&
            const DeepCollectionEquality()
                .equals(other.carbohydrates, carbohydrates) &&
            const DeepCollectionEquality().equals(other.fat, fat) &&
            const DeepCollectionEquality().equals(other.protein, protein) &&
            const DeepCollectionEquality().equals(other.salt, salt) &&
            const DeepCollectionEquality()
                .equals(other.saturatedFat, saturatedFat) &&
            const DeepCollectionEquality().equals(other.sugar, sugar) &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(energy),
      const DeepCollectionEquality().hash(carbohydrates),
      const DeepCollectionEquality().hash(fat),
      const DeepCollectionEquality().hash(protein),
      const DeepCollectionEquality().hash(salt),
      const DeepCollectionEquality().hash(saturatedFat),
      const DeepCollectionEquality().hash(sugar),
      const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$NutrientsModelCopyWith<_NutrientsModel> get copyWith =>
      __$NutrientsModelCopyWithImpl<_NutrientsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutrientsModelToJson(this);
  }
}

abstract class _NutrientsModel extends NutrientsModel {
  const factory _NutrientsModel(
      {int id,
      double energy,
      double carbohydrates,
      double fat,
      double protein,
      double salt,
      @JsonKey(name: 'saturated_fat') double saturatedFat,
      double sugar,
      @JsonKey(name: 'fk_productid') int productId}) = _$_NutrientsModel;
  const _NutrientsModel._() : super._();

  factory _NutrientsModel.fromJson(Map<String, dynamic> json) =
      _$_NutrientsModel.fromJson;

  @override
  int get id;
  @override
  double get energy;
  @override
  double get carbohydrates;
  @override
  double get fat;
  @override
  double get protein;
  @override
  double get salt;
  @override
  @JsonKey(name: 'saturated_fat')
  double get saturatedFat;
  @override
  double get sugar;
  @override
  @JsonKey(name: 'fk_productid')
  int get productId;
  @override
  @JsonKey(ignore: true)
  _$NutrientsModelCopyWith<_NutrientsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
