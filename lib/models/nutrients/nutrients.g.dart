// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutrientsModel _$$_NutrientsModelFromJson(Map<String, dynamic> json) =>
    _$_NutrientsModel(
      id: json['id'] as int? ?? 0,
      energy: (json['energy'] as num?)?.toDouble() ?? 0.0,
      carbohydrates: (json['carbohydrates'] as num?)?.toDouble() ?? 0.0,
      fat: (json['fat'] as num?)?.toDouble() ?? 0.0,
      protein: (json['protein'] as num?)?.toDouble() ?? 0.0,
      salt: (json['salt'] as num?)?.toDouble() ?? 0.0,
      saturatedFat: (json['saturated_fat'] as num?)?.toDouble() ?? 0.0,
      sugar: (json['sugar'] as num?)?.toDouble() ?? 0.0,
      productId: json['fk_productid'] as int? ?? 0,
    );

Map<String, dynamic> _$$_NutrientsModelToJson(_$_NutrientsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'energy': instance.energy,
      'carbohydrates': instance.carbohydrates,
      'fat': instance.fat,
      'protein': instance.protein,
      'salt': instance.salt,
      'saturated_fat': instance.saturatedFat,
      'sugar': instance.sugar,
      'fk_productid': instance.productId,
    };
