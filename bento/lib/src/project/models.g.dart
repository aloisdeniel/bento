// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BentoProjectConfiguration _$$_BentoProjectConfigurationFromJson(
        Map<String, dynamic> json) =>
    _$_BentoProjectConfiguration(
      name: json['name'] as String,
      dart: json['dart'] == null
          ? const BentoDartOptions()
          : BentoDartOptions.fromJson(json['dart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BentoProjectConfigurationToJson(
        _$_BentoProjectConfiguration instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dart': instance.dart,
    };

_$_BentoDartOptions _$$_BentoDartOptionsFromJson(Map<String, dynamic> json) =>
    _$_BentoDartOptions(
      equatable: json['equatable'] as bool? ?? true,
      lazyInstances: json['lazyInstances'] as bool? ?? false,
      reflect: json['reflect'] as bool? ?? true,
      tests: json['tests'] as bool? ?? true,
      assetPackage: json['assetPackage'] as String?,
    );

Map<String, dynamic> _$$_BentoDartOptionsToJson(_$_BentoDartOptions instance) =>
    <String, dynamic>{
      'equatable': instance.equatable,
      'lazyInstances': instance.lazyInstances,
      'reflect': instance.reflect,
      'tests': instance.tests,
      'assetPackage': instance.assetPackage,
    };
