// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChainModel _$ChainModelFromJson(Map<String, dynamic> json) {
  return _ChainModel.fromJson(json);
}

/// @nodoc
class _$ChainModelTearOff {
  const _$ChainModelTearOff();

  _ChainModel call(
      {@JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      int id = 0,
      String name = '',
      @JsonKey(name: 'image_url')
          String imageUrl = '',
      String email = ''}) {
    return _ChainModel(
      dateCreated: dateCreated,
      id: id,
      name: name,
      imageUrl: imageUrl,
      email: email,
    );
  }

  ChainModel fromJson(Map<String, Object?> json) {
    return ChainModel.fromJson(json);
  }
}

/// @nodoc
const $ChainModel = _$ChainModelTearOff();

/// @nodoc
mixin _$ChainModel {
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChainModelCopyWith<ChainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainModelCopyWith<$Res> {
  factory $ChainModelCopyWith(
          ChainModel value, $Res Function(ChainModel) then) =
      _$ChainModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      int id,
      String name,
      @JsonKey(name: 'image_url')
          String imageUrl,
      String email});
}

/// @nodoc
class _$ChainModelCopyWithImpl<$Res> implements $ChainModelCopyWith<$Res> {
  _$ChainModelCopyWithImpl(this._value, this._then);

  final ChainModel _value;
  // ignore: unused_field
  final $Res Function(ChainModel) _then;

  @override
  $Res call({
    Object? dateCreated = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChainModelCopyWith<$Res> implements $ChainModelCopyWith<$Res> {
  factory _$ChainModelCopyWith(
          _ChainModel value, $Res Function(_ChainModel) then) =
      __$ChainModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      int id,
      String name,
      @JsonKey(name: 'image_url')
          String imageUrl,
      String email});
}

/// @nodoc
class __$ChainModelCopyWithImpl<$Res> extends _$ChainModelCopyWithImpl<$Res>
    implements _$ChainModelCopyWith<$Res> {
  __$ChainModelCopyWithImpl(
      _ChainModel _value, $Res Function(_ChainModel) _then)
      : super(_value, (v) => _then(v as _ChainModel));

  @override
  _ChainModel get _value => super._value as _ChainModel;

  @override
  $Res call({
    Object? dateCreated = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? email = freezed,
  }) {
    return _then(_ChainModel(
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChainModel extends _ChainModel {
  const _$_ChainModel(
      {@JsonKey(name: 'date_created') @DatetimeConverter() this.dateCreated,
      this.id = 0,
      this.name = '',
      @JsonKey(name: 'image_url') this.imageUrl = '',
      this.email = ''})
      : super._();

  factory _$_ChainModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChainModelFromJson(json);

  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  final DateTime? dateCreated;
  @JsonKey()
  @override
  final int id;
  @JsonKey()
  @override
  final String name;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey()
  @override
  final String email;

  @override
  String toString() {
    return 'ChainModel(dateCreated: $dateCreated, id: $id, name: $name, imageUrl: $imageUrl, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChainModel &&
            const DeepCollectionEquality()
                .equals(other.dateCreated, dateCreated) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateCreated),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$ChainModelCopyWith<_ChainModel> get copyWith =>
      __$ChainModelCopyWithImpl<_ChainModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChainModelToJson(this);
  }
}

abstract class _ChainModel extends ChainModel {
  const factory _ChainModel(
      {@JsonKey(name: 'date_created')
      @DatetimeConverter()
          DateTime? dateCreated,
      int id,
      String name,
      @JsonKey(name: 'image_url')
          String imageUrl,
      String email}) = _$_ChainModel;
  const _ChainModel._() : super._();

  factory _ChainModel.fromJson(Map<String, dynamic> json) =
      _$_ChainModel.fromJson;

  @override
  @JsonKey(name: 'date_created')
  @DatetimeConverter()
  DateTime? get dateCreated;
  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$ChainModelCopyWith<_ChainModel> get copyWith =>
      throw _privateConstructorUsedError;
}
