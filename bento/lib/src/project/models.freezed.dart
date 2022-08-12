// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BentoProjectConfiguration _$BentoProjectConfigurationFromJson(
    Map<String, dynamic> json) {
  return _BentoProjectConfiguration.fromJson(json);
}

/// @nodoc
mixin _$BentoProjectConfiguration {
  String get name => throw _privateConstructorUsedError;
  BentoDartOptions get dart => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BentoProjectConfigurationCopyWith<BentoProjectConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BentoProjectConfigurationCopyWith<$Res> {
  factory $BentoProjectConfigurationCopyWith(BentoProjectConfiguration value,
          $Res Function(BentoProjectConfiguration) then) =
      _$BentoProjectConfigurationCopyWithImpl<$Res>;
  $Res call({String name, BentoDartOptions dart});

  $BentoDartOptionsCopyWith<$Res> get dart;
}

/// @nodoc
class _$BentoProjectConfigurationCopyWithImpl<$Res>
    implements $BentoProjectConfigurationCopyWith<$Res> {
  _$BentoProjectConfigurationCopyWithImpl(this._value, this._then);

  final BentoProjectConfiguration _value;
  // ignore: unused_field
  final $Res Function(BentoProjectConfiguration) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? dart = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dart: dart == freezed
          ? _value.dart
          : dart // ignore: cast_nullable_to_non_nullable
              as BentoDartOptions,
    ));
  }

  @override
  $BentoDartOptionsCopyWith<$Res> get dart {
    return $BentoDartOptionsCopyWith<$Res>(_value.dart, (value) {
      return _then(_value.copyWith(dart: value));
    });
  }
}

/// @nodoc
abstract class _$$_BentoProjectConfigurationCopyWith<$Res>
    implements $BentoProjectConfigurationCopyWith<$Res> {
  factory _$$_BentoProjectConfigurationCopyWith(
          _$_BentoProjectConfiguration value,
          $Res Function(_$_BentoProjectConfiguration) then) =
      __$$_BentoProjectConfigurationCopyWithImpl<$Res>;
  @override
  $Res call({String name, BentoDartOptions dart});

  @override
  $BentoDartOptionsCopyWith<$Res> get dart;
}

/// @nodoc
class __$$_BentoProjectConfigurationCopyWithImpl<$Res>
    extends _$BentoProjectConfigurationCopyWithImpl<$Res>
    implements _$$_BentoProjectConfigurationCopyWith<$Res> {
  __$$_BentoProjectConfigurationCopyWithImpl(
      _$_BentoProjectConfiguration _value,
      $Res Function(_$_BentoProjectConfiguration) _then)
      : super(_value, (v) => _then(v as _$_BentoProjectConfiguration));

  @override
  _$_BentoProjectConfiguration get _value =>
      super._value as _$_BentoProjectConfiguration;

  @override
  $Res call({
    Object? name = freezed,
    Object? dart = freezed,
  }) {
    return _then(_$_BentoProjectConfiguration(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dart: dart == freezed
          ? _value.dart
          : dart // ignore: cast_nullable_to_non_nullable
              as BentoDartOptions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BentoProjectConfiguration extends _BentoProjectConfiguration {
  const _$_BentoProjectConfiguration({required this.name, required this.dart})
      : super._();

  factory _$_BentoProjectConfiguration.fromJson(Map<String, dynamic> json) =>
      _$$_BentoProjectConfigurationFromJson(json);

  @override
  final String name;
  @override
  final BentoDartOptions dart;

  @override
  String toString() {
    return 'BentoProjectConfiguration(name: $name, dart: $dart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BentoProjectConfiguration &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.dart, dart));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(dart));

  @JsonKey(ignore: true)
  @override
  _$$_BentoProjectConfigurationCopyWith<_$_BentoProjectConfiguration>
      get copyWith => __$$_BentoProjectConfigurationCopyWithImpl<
          _$_BentoProjectConfiguration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BentoProjectConfigurationToJson(this);
  }
}

abstract class _BentoProjectConfiguration extends BentoProjectConfiguration {
  const factory _BentoProjectConfiguration(
      {required final String name,
      required final BentoDartOptions dart}) = _$_BentoProjectConfiguration;
  const _BentoProjectConfiguration._() : super._();

  factory _BentoProjectConfiguration.fromJson(Map<String, dynamic> json) =
      _$_BentoProjectConfiguration.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  BentoDartOptions get dart => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BentoProjectConfigurationCopyWith<_$_BentoProjectConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

BentoDartOptions _$BentoDartOptionsFromJson(Map<String, dynamic> json) {
  return _BentoDartOptions.fromJson(json);
}

/// @nodoc
mixin _$BentoDartOptions {
  bool get equatable => throw _privateConstructorUsedError;
  bool get lazyInstances => throw _privateConstructorUsedError;
  String? get assetPackage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BentoDartOptionsCopyWith<BentoDartOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BentoDartOptionsCopyWith<$Res> {
  factory $BentoDartOptionsCopyWith(
          BentoDartOptions value, $Res Function(BentoDartOptions) then) =
      _$BentoDartOptionsCopyWithImpl<$Res>;
  $Res call({bool equatable, bool lazyInstances, String? assetPackage});
}

/// @nodoc
class _$BentoDartOptionsCopyWithImpl<$Res>
    implements $BentoDartOptionsCopyWith<$Res> {
  _$BentoDartOptionsCopyWithImpl(this._value, this._then);

  final BentoDartOptions _value;
  // ignore: unused_field
  final $Res Function(BentoDartOptions) _then;

  @override
  $Res call({
    Object? equatable = freezed,
    Object? lazyInstances = freezed,
    Object? assetPackage = freezed,
  }) {
    return _then(_value.copyWith(
      equatable: equatable == freezed
          ? _value.equatable
          : equatable // ignore: cast_nullable_to_non_nullable
              as bool,
      lazyInstances: lazyInstances == freezed
          ? _value.lazyInstances
          : lazyInstances // ignore: cast_nullable_to_non_nullable
              as bool,
      assetPackage: assetPackage == freezed
          ? _value.assetPackage
          : assetPackage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BentoDartOptionsCopyWith<$Res>
    implements $BentoDartOptionsCopyWith<$Res> {
  factory _$$_BentoDartOptionsCopyWith(
          _$_BentoDartOptions value, $Res Function(_$_BentoDartOptions) then) =
      __$$_BentoDartOptionsCopyWithImpl<$Res>;
  @override
  $Res call({bool equatable, bool lazyInstances, String? assetPackage});
}

/// @nodoc
class __$$_BentoDartOptionsCopyWithImpl<$Res>
    extends _$BentoDartOptionsCopyWithImpl<$Res>
    implements _$$_BentoDartOptionsCopyWith<$Res> {
  __$$_BentoDartOptionsCopyWithImpl(
      _$_BentoDartOptions _value, $Res Function(_$_BentoDartOptions) _then)
      : super(_value, (v) => _then(v as _$_BentoDartOptions));

  @override
  _$_BentoDartOptions get _value => super._value as _$_BentoDartOptions;

  @override
  $Res call({
    Object? equatable = freezed,
    Object? lazyInstances = freezed,
    Object? assetPackage = freezed,
  }) {
    return _then(_$_BentoDartOptions(
      equatable: equatable == freezed
          ? _value.equatable
          : equatable // ignore: cast_nullable_to_non_nullable
              as bool,
      lazyInstances: lazyInstances == freezed
          ? _value.lazyInstances
          : lazyInstances // ignore: cast_nullable_to_non_nullable
              as bool,
      assetPackage: assetPackage == freezed
          ? _value.assetPackage
          : assetPackage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BentoDartOptions extends _BentoDartOptions {
  const _$_BentoDartOptions(
      {this.equatable = true, this.lazyInstances = false, this.assetPackage})
      : super._();

  factory _$_BentoDartOptions.fromJson(Map<String, dynamic> json) =>
      _$$_BentoDartOptionsFromJson(json);

  @override
  @JsonKey()
  final bool equatable;
  @override
  @JsonKey()
  final bool lazyInstances;
  @override
  final String? assetPackage;

  @override
  String toString() {
    return 'BentoDartOptions(equatable: $equatable, lazyInstances: $lazyInstances, assetPackage: $assetPackage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BentoDartOptions &&
            const DeepCollectionEquality().equals(other.equatable, equatable) &&
            const DeepCollectionEquality()
                .equals(other.lazyInstances, lazyInstances) &&
            const DeepCollectionEquality()
                .equals(other.assetPackage, assetPackage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(equatable),
      const DeepCollectionEquality().hash(lazyInstances),
      const DeepCollectionEquality().hash(assetPackage));

  @JsonKey(ignore: true)
  @override
  _$$_BentoDartOptionsCopyWith<_$_BentoDartOptions> get copyWith =>
      __$$_BentoDartOptionsCopyWithImpl<_$_BentoDartOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BentoDartOptionsToJson(this);
  }
}

abstract class _BentoDartOptions extends BentoDartOptions {
  const factory _BentoDartOptions(
      {final bool equatable,
      final bool lazyInstances,
      final String? assetPackage}) = _$_BentoDartOptions;
  const _BentoDartOptions._() : super._();

  factory _BentoDartOptions.fromJson(Map<String, dynamic> json) =
      _$_BentoDartOptions.fromJson;

  @override
  bool get equatable => throw _privateConstructorUsedError;
  @override
  bool get lazyInstances => throw _privateConstructorUsedError;
  @override
  String? get assetPackage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BentoDartOptionsCopyWith<_$_BentoDartOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BentoProject {
  BentoProjectConfiguration get configuration =>
      throw _privateConstructorUsedError;
  List<BentoItem<BentoTheme>> get themes => throw _privateConstructorUsedError;
  List<BentoItem<BentoWidget>> get widgets =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BentoProjectCopyWith<BentoProject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BentoProjectCopyWith<$Res> {
  factory $BentoProjectCopyWith(
          BentoProject value, $Res Function(BentoProject) then) =
      _$BentoProjectCopyWithImpl<$Res>;
  $Res call(
      {BentoProjectConfiguration configuration,
      List<BentoItem<BentoTheme>> themes,
      List<BentoItem<BentoWidget>> widgets});

  $BentoProjectConfigurationCopyWith<$Res> get configuration;
}

/// @nodoc
class _$BentoProjectCopyWithImpl<$Res> implements $BentoProjectCopyWith<$Res> {
  _$BentoProjectCopyWithImpl(this._value, this._then);

  final BentoProject _value;
  // ignore: unused_field
  final $Res Function(BentoProject) _then;

  @override
  $Res call({
    Object? configuration = freezed,
    Object? themes = freezed,
    Object? widgets = freezed,
  }) {
    return _then(_value.copyWith(
      configuration: configuration == freezed
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as BentoProjectConfiguration,
      themes: themes == freezed
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<BentoItem<BentoTheme>>,
      widgets: widgets == freezed
          ? _value.widgets
          : widgets // ignore: cast_nullable_to_non_nullable
              as List<BentoItem<BentoWidget>>,
    ));
  }

  @override
  $BentoProjectConfigurationCopyWith<$Res> get configuration {
    return $BentoProjectConfigurationCopyWith<$Res>(_value.configuration,
        (value) {
      return _then(_value.copyWith(configuration: value));
    });
  }
}

/// @nodoc
abstract class _$$_BentoProjectCopyWith<$Res>
    implements $BentoProjectCopyWith<$Res> {
  factory _$$_BentoProjectCopyWith(
          _$_BentoProject value, $Res Function(_$_BentoProject) then) =
      __$$_BentoProjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {BentoProjectConfiguration configuration,
      List<BentoItem<BentoTheme>> themes,
      List<BentoItem<BentoWidget>> widgets});

  @override
  $BentoProjectConfigurationCopyWith<$Res> get configuration;
}

/// @nodoc
class __$$_BentoProjectCopyWithImpl<$Res>
    extends _$BentoProjectCopyWithImpl<$Res>
    implements _$$_BentoProjectCopyWith<$Res> {
  __$$_BentoProjectCopyWithImpl(
      _$_BentoProject _value, $Res Function(_$_BentoProject) _then)
      : super(_value, (v) => _then(v as _$_BentoProject));

  @override
  _$_BentoProject get _value => super._value as _$_BentoProject;

  @override
  $Res call({
    Object? configuration = freezed,
    Object? themes = freezed,
    Object? widgets = freezed,
  }) {
    return _then(_$_BentoProject(
      configuration: configuration == freezed
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as BentoProjectConfiguration,
      themes: themes == freezed
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<BentoItem<BentoTheme>>,
      widgets: widgets == freezed
          ? _value._widgets
          : widgets // ignore: cast_nullable_to_non_nullable
              as List<BentoItem<BentoWidget>>,
    ));
  }
}

/// @nodoc

class _$_BentoProject extends _BentoProject {
  const _$_BentoProject(
      {required this.configuration,
      required final List<BentoItem<BentoTheme>> themes,
      required final List<BentoItem<BentoWidget>> widgets})
      : _themes = themes,
        _widgets = widgets,
        super._();

  @override
  final BentoProjectConfiguration configuration;
  final List<BentoItem<BentoTheme>> _themes;
  @override
  List<BentoItem<BentoTheme>> get themes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themes);
  }

  final List<BentoItem<BentoWidget>> _widgets;
  @override
  List<BentoItem<BentoWidget>> get widgets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_widgets);
  }

  @override
  String toString() {
    return 'BentoProject(configuration: $configuration, themes: $themes, widgets: $widgets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BentoProject &&
            const DeepCollectionEquality()
                .equals(other.configuration, configuration) &&
            const DeepCollectionEquality().equals(other._themes, _themes) &&
            const DeepCollectionEquality().equals(other._widgets, _widgets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(configuration),
      const DeepCollectionEquality().hash(_themes),
      const DeepCollectionEquality().hash(_widgets));

  @JsonKey(ignore: true)
  @override
  _$$_BentoProjectCopyWith<_$_BentoProject> get copyWith =>
      __$$_BentoProjectCopyWithImpl<_$_BentoProject>(this, _$identity);
}

abstract class _BentoProject extends BentoProject {
  const factory _BentoProject(
      {required final BentoProjectConfiguration configuration,
      required final List<BentoItem<BentoTheme>> themes,
      required final List<BentoItem<BentoWidget>> widgets}) = _$_BentoProject;
  const _BentoProject._() : super._();

  @override
  BentoProjectConfiguration get configuration =>
      throw _privateConstructorUsedError;
  @override
  List<BentoItem<BentoTheme>> get themes => throw _privateConstructorUsedError;
  @override
  List<BentoItem<BentoWidget>> get widgets =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BentoProjectCopyWith<_$_BentoProject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BentoItem<T> {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, T content) file,
    required TResult Function(String name, List<BentoItem<T>> children)
        directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, T content)? file,
    TResult Function(String name, List<BentoItem<T>> children)? directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, T content)? file,
    TResult Function(String name, List<BentoItem<T>> children)? directory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BentoFile<T> value) file,
    required TResult Function(BentoDirectory<T> value) directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BentoFile<T> value)? file,
    TResult Function(BentoDirectory<T> value)? directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BentoFile<T> value)? file,
    TResult Function(BentoDirectory<T> value)? directory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BentoItemCopyWith<T, BentoItem<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BentoItemCopyWith<T, $Res> {
  factory $BentoItemCopyWith(
          BentoItem<T> value, $Res Function(BentoItem<T>) then) =
      _$BentoItemCopyWithImpl<T, $Res>;
  $Res call({String name});
}

/// @nodoc
class _$BentoItemCopyWithImpl<T, $Res> implements $BentoItemCopyWith<T, $Res> {
  _$BentoItemCopyWithImpl(this._value, this._then);

  final BentoItem<T> _value;
  // ignore: unused_field
  final $Res Function(BentoItem<T>) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$BentoFileCopyWith<T, $Res>
    implements $BentoItemCopyWith<T, $Res> {
  factory _$$BentoFileCopyWith(
          _$BentoFile<T> value, $Res Function(_$BentoFile<T>) then) =
      __$$BentoFileCopyWithImpl<T, $Res>;
  @override
  $Res call({String name, T content});
}

/// @nodoc
class __$$BentoFileCopyWithImpl<T, $Res>
    extends _$BentoItemCopyWithImpl<T, $Res>
    implements _$$BentoFileCopyWith<T, $Res> {
  __$$BentoFileCopyWithImpl(
      _$BentoFile<T> _value, $Res Function(_$BentoFile<T>) _then)
      : super(_value, (v) => _then(v as _$BentoFile<T>));

  @override
  _$BentoFile<T> get _value => super._value as _$BentoFile<T>;

  @override
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
  }) {
    return _then(_$BentoFile<T>(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$BentoFile<T> extends BentoFile<T> {
  const _$BentoFile({required this.name, required this.content}) : super._();

  @override
  final String name;
  @override
  final T content;

  @override
  String toString() {
    return 'BentoItem<$T>.file(name: $name, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BentoFile<T> &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$BentoFileCopyWith<T, _$BentoFile<T>> get copyWith =>
      __$$BentoFileCopyWithImpl<T, _$BentoFile<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, T content) file,
    required TResult Function(String name, List<BentoItem<T>> children)
        directory,
  }) {
    return file(name, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, T content)? file,
    TResult Function(String name, List<BentoItem<T>> children)? directory,
  }) {
    return file?.call(name, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, T content)? file,
    TResult Function(String name, List<BentoItem<T>> children)? directory,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(name, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BentoFile<T> value) file,
    required TResult Function(BentoDirectory<T> value) directory,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BentoFile<T> value)? file,
    TResult Function(BentoDirectory<T> value)? directory,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BentoFile<T> value)? file,
    TResult Function(BentoDirectory<T> value)? directory,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }
}

abstract class BentoFile<T> extends BentoItem<T> {
  const factory BentoFile(
      {required final String name, required final T content}) = _$BentoFile<T>;
  const BentoFile._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  T get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$BentoFileCopyWith<T, _$BentoFile<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BentoDirectoryCopyWith<T, $Res>
    implements $BentoItemCopyWith<T, $Res> {
  factory _$$BentoDirectoryCopyWith(
          _$BentoDirectory<T> value, $Res Function(_$BentoDirectory<T>) then) =
      __$$BentoDirectoryCopyWithImpl<T, $Res>;
  @override
  $Res call({String name, List<BentoItem<T>> children});
}

/// @nodoc
class __$$BentoDirectoryCopyWithImpl<T, $Res>
    extends _$BentoItemCopyWithImpl<T, $Res>
    implements _$$BentoDirectoryCopyWith<T, $Res> {
  __$$BentoDirectoryCopyWithImpl(
      _$BentoDirectory<T> _value, $Res Function(_$BentoDirectory<T>) _then)
      : super(_value, (v) => _then(v as _$BentoDirectory<T>));

  @override
  _$BentoDirectory<T> get _value => super._value as _$BentoDirectory<T>;

  @override
  $Res call({
    Object? name = freezed,
    Object? children = freezed,
  }) {
    return _then(_$BentoDirectory<T>(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      children: children == freezed
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BentoItem<T>>,
    ));
  }
}

/// @nodoc

class _$BentoDirectory<T> extends BentoDirectory<T> {
  const _$BentoDirectory(
      {required this.name, required final List<BentoItem<T>> children})
      : _children = children,
        super._();

  @override
  final String name;
  final List<BentoItem<T>> _children;
  @override
  List<BentoItem<T>> get children {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'BentoItem<$T>.directory(name: $name, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BentoDirectory<T> &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  _$$BentoDirectoryCopyWith<T, _$BentoDirectory<T>> get copyWith =>
      __$$BentoDirectoryCopyWithImpl<T, _$BentoDirectory<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, T content) file,
    required TResult Function(String name, List<BentoItem<T>> children)
        directory,
  }) {
    return directory(name, children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, T content)? file,
    TResult Function(String name, List<BentoItem<T>> children)? directory,
  }) {
    return directory?.call(name, children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, T content)? file,
    TResult Function(String name, List<BentoItem<T>> children)? directory,
    required TResult orElse(),
  }) {
    if (directory != null) {
      return directory(name, children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BentoFile<T> value) file,
    required TResult Function(BentoDirectory<T> value) directory,
  }) {
    return directory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BentoFile<T> value)? file,
    TResult Function(BentoDirectory<T> value)? directory,
  }) {
    return directory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BentoFile<T> value)? file,
    TResult Function(BentoDirectory<T> value)? directory,
    required TResult orElse(),
  }) {
    if (directory != null) {
      return directory(this);
    }
    return orElse();
  }
}

abstract class BentoDirectory<T> extends BentoItem<T> {
  const factory BentoDirectory(
      {required final String name,
      required final List<BentoItem<T>> children}) = _$BentoDirectory<T>;
  const BentoDirectory._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  List<BentoItem<T>> get children => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$BentoDirectoryCopyWith<T, _$BentoDirectory<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
