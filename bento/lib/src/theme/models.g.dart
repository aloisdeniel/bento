// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IconPath _$$_IconPathFromJson(Map<String, dynamic> json) => _$_IconPath(
      data: json['data'] as String,
      windingRule: json['windingRule'] == null
          ? PathFillType.nonZero
          : const WindingRuleConverter().fromJson(json['windingRule']),
    );

Map<String, dynamic> _$$_IconPathToJson(_$_IconPath instance) =>
    <String, dynamic>{
      'data': instance.data,
      'windingRule': const WindingRuleConverter().toJson(instance.windingRule),
    };
