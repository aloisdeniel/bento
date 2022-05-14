// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IconPath _$$_IconPathFromJson(Map<String, dynamic> json) => _$_IconPath(
      data: json['data'] as String,
      windingRule:
          $enumDecodeNullable(_$PathFillTypeEnumMap, json['windingRule']) ??
              PathFillType.nonZero,
    );

Map<String, dynamic> _$$_IconPathToJson(_$_IconPath instance) =>
    <String, dynamic>{
      'data': instance.data,
      'windingRule': _$PathFillTypeEnumMap[instance.windingRule],
    };

const _$PathFillTypeEnumMap = {
  PathFillType.nonZero: 'nonZero',
  PathFillType.evenOdd: 'evenOdd',
};
