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

/// @nodoc
mixin _$DesignLibrary {
  List<DesignToken> get tokens => throw _privateConstructorUsedError;
  Map<String, DesignLibrary> get children => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DesignLibraryCopyWith<DesignLibrary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignLibraryCopyWith<$Res> {
  factory $DesignLibraryCopyWith(
          DesignLibrary value, $Res Function(DesignLibrary) then) =
      _$DesignLibraryCopyWithImpl<$Res>;
  $Res call({List<DesignToken> tokens, Map<String, DesignLibrary> children});
}

/// @nodoc
class _$DesignLibraryCopyWithImpl<$Res>
    implements $DesignLibraryCopyWith<$Res> {
  _$DesignLibraryCopyWithImpl(this._value, this._then);

  final DesignLibrary _value;
  // ignore: unused_field
  final $Res Function(DesignLibrary) _then;

  @override
  $Res call({
    Object? tokens = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<DesignToken>,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as Map<String, DesignLibrary>,
    ));
  }
}

/// @nodoc
abstract class _$$_DesignLibraryCopyWith<$Res>
    implements $DesignLibraryCopyWith<$Res> {
  factory _$$_DesignLibraryCopyWith(
          _$_DesignLibrary value, $Res Function(_$_DesignLibrary) then) =
      __$$_DesignLibraryCopyWithImpl<$Res>;
  @override
  $Res call({List<DesignToken> tokens, Map<String, DesignLibrary> children});
}

/// @nodoc
class __$$_DesignLibraryCopyWithImpl<$Res>
    extends _$DesignLibraryCopyWithImpl<$Res>
    implements _$$_DesignLibraryCopyWith<$Res> {
  __$$_DesignLibraryCopyWithImpl(
      _$_DesignLibrary _value, $Res Function(_$_DesignLibrary) _then)
      : super(_value, (v) => _then(v as _$_DesignLibrary));

  @override
  _$_DesignLibrary get _value => super._value as _$_DesignLibrary;

  @override
  $Res call({
    Object? tokens = freezed,
    Object? children = freezed,
  }) {
    return _then(_$_DesignLibrary(
      tokens: tokens == freezed
          ? _value._tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<DesignToken>,
      children: children == freezed
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as Map<String, DesignLibrary>,
    ));
  }
}

/// @nodoc

class _$_DesignLibrary extends _DesignLibrary with DiagnosticableTreeMixin {
  const _$_DesignLibrary(
      {required final List<DesignToken> tokens,
      final Map<String, DesignLibrary> children =
          const <String, DesignLibrary>{}})
      : _tokens = tokens,
        _children = children,
        super._();

  final List<DesignToken> _tokens;
  @override
  List<DesignToken> get tokens {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokens);
  }

  final Map<String, DesignLibrary> _children;
  @override
  @JsonKey()
  Map<String, DesignLibrary> get children {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_children);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DesignLibrary(tokens: $tokens, children: $children)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DesignLibrary'))
      ..add(DiagnosticsProperty('tokens', tokens))
      ..add(DiagnosticsProperty('children', children));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DesignLibrary &&
            const DeepCollectionEquality().equals(other._tokens, _tokens) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tokens),
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  _$$_DesignLibraryCopyWith<_$_DesignLibrary> get copyWith =>
      __$$_DesignLibraryCopyWithImpl<_$_DesignLibrary>(this, _$identity);
}

abstract class _DesignLibrary extends DesignLibrary {
  const factory _DesignLibrary(
      {required final List<DesignToken> tokens,
      final Map<String, DesignLibrary> children}) = _$_DesignLibrary;
  const _DesignLibrary._() : super._();

  @override
  List<DesignToken> get tokens => throw _privateConstructorUsedError;
  @override
  Map<String, DesignLibrary> get children => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DesignLibraryCopyWith<_$_DesignLibrary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DesignToken {
  String get name => throw _privateConstructorUsedError;
  DesignTokenValue get value => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DesignTokenCopyWith<DesignToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignTokenCopyWith<$Res> {
  factory $DesignTokenCopyWith(
          DesignToken value, $Res Function(DesignToken) then) =
      _$DesignTokenCopyWithImpl<$Res>;
  $Res call({String name, DesignTokenValue value, String? description});

  $DesignTokenValueCopyWith<$Res> get value;
}

/// @nodoc
class _$DesignTokenCopyWithImpl<$Res> implements $DesignTokenCopyWith<$Res> {
  _$DesignTokenCopyWithImpl(this._value, this._then);

  final DesignToken _value;
  // ignore: unused_field
  final $Res Function(DesignToken) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DesignTokenValue,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $DesignTokenValueCopyWith<$Res> get value {
    return $DesignTokenValueCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
abstract class _$$_DesignTokenCopyWith<$Res>
    implements $DesignTokenCopyWith<$Res> {
  factory _$$_DesignTokenCopyWith(
          _$_DesignToken value, $Res Function(_$_DesignToken) then) =
      __$$_DesignTokenCopyWithImpl<$Res>;
  @override
  $Res call({String name, DesignTokenValue value, String? description});

  @override
  $DesignTokenValueCopyWith<$Res> get value;
}

/// @nodoc
class __$$_DesignTokenCopyWithImpl<$Res> extends _$DesignTokenCopyWithImpl<$Res>
    implements _$$_DesignTokenCopyWith<$Res> {
  __$$_DesignTokenCopyWithImpl(
      _$_DesignToken _value, $Res Function(_$_DesignToken) _then)
      : super(_value, (v) => _then(v as _$_DesignToken));

  @override
  _$_DesignToken get _value => super._value as _$_DesignToken;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_DesignToken(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DesignTokenValue,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DesignToken with DiagnosticableTreeMixin implements _DesignToken {
  const _$_DesignToken(
      {required this.name, required this.value, this.description});

  @override
  final String name;
  @override
  final DesignTokenValue value;
  @override
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DesignToken(name: $name, value: $value, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DesignToken'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DesignToken &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_DesignTokenCopyWith<_$_DesignToken> get copyWith =>
      __$$_DesignTokenCopyWithImpl<_$_DesignToken>(this, _$identity);
}

abstract class _DesignToken implements DesignToken {
  const factory _DesignToken(
      {required final String name,
      required final DesignTokenValue value,
      final String? description}) = _$_DesignToken;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  DesignTokenValue get value => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DesignTokenCopyWith<_$_DesignToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DesignTokenValue {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(double value) dimension,
    required TResult Function(@ColorTokenValueConverter() Color value) color,
    required TResult Function(double smoothing, BorderRadius radius) radius,
    required TResult Function(EdgeInsets value) spacing,
    required TResult Function(TextStyle textStyle) fontStyle,
    required TResult Function(List<IconPath> paths, Size size) icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownTokenValue value) unknown,
    required TResult Function(SizeTokenValue value) dimension,
    required TResult Function(ColorTokenValue value) color,
    required TResult Function(RadiusTokenValue value) radius,
    required TResult Function(SpacingTokenValue value) spacing,
    required TResult Function(FontStyleTokenValue value) fontStyle,
    required TResult Function(IconTokenValue value) icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignTokenValueCopyWith<$Res> {
  factory $DesignTokenValueCopyWith(
          DesignTokenValue value, $Res Function(DesignTokenValue) then) =
      _$DesignTokenValueCopyWithImpl<$Res>;
}

/// @nodoc
class _$DesignTokenValueCopyWithImpl<$Res>
    implements $DesignTokenValueCopyWith<$Res> {
  _$DesignTokenValueCopyWithImpl(this._value, this._then);

  final DesignTokenValue _value;
  // ignore: unused_field
  final $Res Function(DesignTokenValue) _then;
}

/// @nodoc
abstract class _$$UnknownTokenValueCopyWith<$Res> {
  factory _$$UnknownTokenValueCopyWith(
          _$UnknownTokenValue value, $Res Function(_$UnknownTokenValue) then) =
      __$$UnknownTokenValueCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownTokenValueCopyWithImpl<$Res>
    extends _$DesignTokenValueCopyWithImpl<$Res>
    implements _$$UnknownTokenValueCopyWith<$Res> {
  __$$UnknownTokenValueCopyWithImpl(
      _$UnknownTokenValue _value, $Res Function(_$UnknownTokenValue) _then)
      : super(_value, (v) => _then(v as _$UnknownTokenValue));

  @override
  _$UnknownTokenValue get _value => super._value as _$UnknownTokenValue;
}

/// @nodoc

class _$UnknownTokenValue
    with DiagnosticableTreeMixin
    implements UnknownTokenValue {
  const _$UnknownTokenValue();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DesignTokenValue.unknown()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DesignTokenValue.unknown'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownTokenValue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(double value) dimension,
    required TResult Function(@ColorTokenValueConverter() Color value) color,
    required TResult Function(double smoothing, BorderRadius radius) radius,
    required TResult Function(EdgeInsets value) spacing,
    required TResult Function(TextStyle textStyle) fontStyle,
    required TResult Function(List<IconPath> paths, Size size) icon,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownTokenValue value) unknown,
    required TResult Function(SizeTokenValue value) dimension,
    required TResult Function(ColorTokenValue value) color,
    required TResult Function(RadiusTokenValue value) radius,
    required TResult Function(SpacingTokenValue value) spacing,
    required TResult Function(FontStyleTokenValue value) fontStyle,
    required TResult Function(IconTokenValue value) icon,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownTokenValue implements DesignTokenValue {
  const factory UnknownTokenValue() = _$UnknownTokenValue;
}

/// @nodoc
abstract class _$$SizeTokenValueCopyWith<$Res> {
  factory _$$SizeTokenValueCopyWith(
          _$SizeTokenValue value, $Res Function(_$SizeTokenValue) then) =
      __$$SizeTokenValueCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class __$$SizeTokenValueCopyWithImpl<$Res>
    extends _$DesignTokenValueCopyWithImpl<$Res>
    implements _$$SizeTokenValueCopyWith<$Res> {
  __$$SizeTokenValueCopyWithImpl(
      _$SizeTokenValue _value, $Res Function(_$SizeTokenValue) _then)
      : super(_value, (v) => _then(v as _$SizeTokenValue));

  @override
  _$SizeTokenValue get _value => super._value as _$SizeTokenValue;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$SizeTokenValue(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SizeTokenValue with DiagnosticableTreeMixin implements SizeTokenValue {
  const _$SizeTokenValue(this.value);

  @override
  final double value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DesignTokenValue.dimension(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DesignTokenValue.dimension'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeTokenValue &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$SizeTokenValueCopyWith<_$SizeTokenValue> get copyWith =>
      __$$SizeTokenValueCopyWithImpl<_$SizeTokenValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(double value) dimension,
    required TResult Function(@ColorTokenValueConverter() Color value) color,
    required TResult Function(double smoothing, BorderRadius radius) radius,
    required TResult Function(EdgeInsets value) spacing,
    required TResult Function(TextStyle textStyle) fontStyle,
    required TResult Function(List<IconPath> paths, Size size) icon,
  }) {
    return dimension(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
  }) {
    return dimension?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
    required TResult orElse(),
  }) {
    if (dimension != null) {
      return dimension(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownTokenValue value) unknown,
    required TResult Function(SizeTokenValue value) dimension,
    required TResult Function(ColorTokenValue value) color,
    required TResult Function(RadiusTokenValue value) radius,
    required TResult Function(SpacingTokenValue value) spacing,
    required TResult Function(FontStyleTokenValue value) fontStyle,
    required TResult Function(IconTokenValue value) icon,
  }) {
    return dimension(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
  }) {
    return dimension?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
    required TResult orElse(),
  }) {
    if (dimension != null) {
      return dimension(this);
    }
    return orElse();
  }
}

abstract class SizeTokenValue implements DesignTokenValue {
  const factory SizeTokenValue(final double value) = _$SizeTokenValue;

  double get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SizeTokenValueCopyWith<_$SizeTokenValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ColorTokenValueCopyWith<$Res> {
  factory _$$ColorTokenValueCopyWith(
          _$ColorTokenValue value, $Res Function(_$ColorTokenValue) then) =
      __$$ColorTokenValueCopyWithImpl<$Res>;
  $Res call({@ColorTokenValueConverter() Color value});
}

/// @nodoc
class __$$ColorTokenValueCopyWithImpl<$Res>
    extends _$DesignTokenValueCopyWithImpl<$Res>
    implements _$$ColorTokenValueCopyWith<$Res> {
  __$$ColorTokenValueCopyWithImpl(
      _$ColorTokenValue _value, $Res Function(_$ColorTokenValue) _then)
      : super(_value, (v) => _then(v as _$ColorTokenValue));

  @override
  _$ColorTokenValue get _value => super._value as _$ColorTokenValue;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ColorTokenValue(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ColorTokenValue
    with DiagnosticableTreeMixin
    implements ColorTokenValue {
  const _$ColorTokenValue(
      [@ColorTokenValueConverter() this.value = const Color(0xFF000000)]);

  @override
  @JsonKey()
  @ColorTokenValueConverter()
  final Color value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DesignTokenValue.color(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DesignTokenValue.color'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorTokenValue &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$ColorTokenValueCopyWith<_$ColorTokenValue> get copyWith =>
      __$$ColorTokenValueCopyWithImpl<_$ColorTokenValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(double value) dimension,
    required TResult Function(@ColorTokenValueConverter() Color value) color,
    required TResult Function(double smoothing, BorderRadius radius) radius,
    required TResult Function(EdgeInsets value) spacing,
    required TResult Function(TextStyle textStyle) fontStyle,
    required TResult Function(List<IconPath> paths, Size size) icon,
  }) {
    return color(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
  }) {
    return color?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownTokenValue value) unknown,
    required TResult Function(SizeTokenValue value) dimension,
    required TResult Function(ColorTokenValue value) color,
    required TResult Function(RadiusTokenValue value) radius,
    required TResult Function(SpacingTokenValue value) spacing,
    required TResult Function(FontStyleTokenValue value) fontStyle,
    required TResult Function(IconTokenValue value) icon,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class ColorTokenValue implements DesignTokenValue {
  const factory ColorTokenValue(
      [@ColorTokenValueConverter() final Color value]) = _$ColorTokenValue;

  @ColorTokenValueConverter()
  Color get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ColorTokenValueCopyWith<_$ColorTokenValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RadiusTokenValueCopyWith<$Res> {
  factory _$$RadiusTokenValueCopyWith(
          _$RadiusTokenValue value, $Res Function(_$RadiusTokenValue) then) =
      __$$RadiusTokenValueCopyWithImpl<$Res>;
  $Res call({double smoothing, BorderRadius radius});
}

/// @nodoc
class __$$RadiusTokenValueCopyWithImpl<$Res>
    extends _$DesignTokenValueCopyWithImpl<$Res>
    implements _$$RadiusTokenValueCopyWith<$Res> {
  __$$RadiusTokenValueCopyWithImpl(
      _$RadiusTokenValue _value, $Res Function(_$RadiusTokenValue) _then)
      : super(_value, (v) => _then(v as _$RadiusTokenValue));

  @override
  _$RadiusTokenValue get _value => super._value as _$RadiusTokenValue;

  @override
  $Res call({
    Object? smoothing = freezed,
    Object? radius = freezed,
  }) {
    return _then(_$RadiusTokenValue(
      smoothing: smoothing == freezed
          ? _value.smoothing
          : smoothing // ignore: cast_nullable_to_non_nullable
              as double,
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as BorderRadius,
    ));
  }
}

/// @nodoc

class _$RadiusTokenValue
    with DiagnosticableTreeMixin
    implements RadiusTokenValue {
  const _$RadiusTokenValue(
      {this.smoothing = 0.0, this.radius = BorderRadius.zero});

  @override
  @JsonKey()
  final double smoothing;
  @override
  @JsonKey()
  final BorderRadius radius;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DesignTokenValue.radius(smoothing: $smoothing, radius: $radius)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DesignTokenValue.radius'))
      ..add(DiagnosticsProperty('smoothing', smoothing))
      ..add(DiagnosticsProperty('radius', radius));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadiusTokenValue &&
            const DeepCollectionEquality().equals(other.smoothing, smoothing) &&
            const DeepCollectionEquality().equals(other.radius, radius));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(smoothing),
      const DeepCollectionEquality().hash(radius));

  @JsonKey(ignore: true)
  @override
  _$$RadiusTokenValueCopyWith<_$RadiusTokenValue> get copyWith =>
      __$$RadiusTokenValueCopyWithImpl<_$RadiusTokenValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(double value) dimension,
    required TResult Function(@ColorTokenValueConverter() Color value) color,
    required TResult Function(double smoothing, BorderRadius radius) radius,
    required TResult Function(EdgeInsets value) spacing,
    required TResult Function(TextStyle textStyle) fontStyle,
    required TResult Function(List<IconPath> paths, Size size) icon,
  }) {
    return radius(smoothing, this.radius);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
  }) {
    return radius?.call(smoothing, this.radius);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
    required TResult orElse(),
  }) {
    if (radius != null) {
      return radius(smoothing, this.radius);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownTokenValue value) unknown,
    required TResult Function(SizeTokenValue value) dimension,
    required TResult Function(ColorTokenValue value) color,
    required TResult Function(RadiusTokenValue value) radius,
    required TResult Function(SpacingTokenValue value) spacing,
    required TResult Function(FontStyleTokenValue value) fontStyle,
    required TResult Function(IconTokenValue value) icon,
  }) {
    return radius(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
  }) {
    return radius?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
    required TResult orElse(),
  }) {
    if (radius != null) {
      return radius(this);
    }
    return orElse();
  }
}

abstract class RadiusTokenValue implements DesignTokenValue {
  const factory RadiusTokenValue(
      {final double smoothing, final BorderRadius radius}) = _$RadiusTokenValue;

  double get smoothing => throw _privateConstructorUsedError;
  BorderRadius get radius => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RadiusTokenValueCopyWith<_$RadiusTokenValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpacingTokenValueCopyWith<$Res> {
  factory _$$SpacingTokenValueCopyWith(
          _$SpacingTokenValue value, $Res Function(_$SpacingTokenValue) then) =
      __$$SpacingTokenValueCopyWithImpl<$Res>;
  $Res call({EdgeInsets value});
}

/// @nodoc
class __$$SpacingTokenValueCopyWithImpl<$Res>
    extends _$DesignTokenValueCopyWithImpl<$Res>
    implements _$$SpacingTokenValueCopyWith<$Res> {
  __$$SpacingTokenValueCopyWithImpl(
      _$SpacingTokenValue _value, $Res Function(_$SpacingTokenValue) _then)
      : super(_value, (v) => _then(v as _$SpacingTokenValue));

  @override
  _$SpacingTokenValue get _value => super._value as _$SpacingTokenValue;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$SpacingTokenValue(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
    ));
  }
}

/// @nodoc

class _$SpacingTokenValue
    with DiagnosticableTreeMixin
    implements SpacingTokenValue {
  const _$SpacingTokenValue(this.value);

  @override
  final EdgeInsets value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DesignTokenValue.spacing(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DesignTokenValue.spacing'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpacingTokenValue &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$SpacingTokenValueCopyWith<_$SpacingTokenValue> get copyWith =>
      __$$SpacingTokenValueCopyWithImpl<_$SpacingTokenValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(double value) dimension,
    required TResult Function(@ColorTokenValueConverter() Color value) color,
    required TResult Function(double smoothing, BorderRadius radius) radius,
    required TResult Function(EdgeInsets value) spacing,
    required TResult Function(TextStyle textStyle) fontStyle,
    required TResult Function(List<IconPath> paths, Size size) icon,
  }) {
    return spacing(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
  }) {
    return spacing?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
    required TResult orElse(),
  }) {
    if (spacing != null) {
      return spacing(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownTokenValue value) unknown,
    required TResult Function(SizeTokenValue value) dimension,
    required TResult Function(ColorTokenValue value) color,
    required TResult Function(RadiusTokenValue value) radius,
    required TResult Function(SpacingTokenValue value) spacing,
    required TResult Function(FontStyleTokenValue value) fontStyle,
    required TResult Function(IconTokenValue value) icon,
  }) {
    return spacing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
  }) {
    return spacing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
    required TResult orElse(),
  }) {
    if (spacing != null) {
      return spacing(this);
    }
    return orElse();
  }
}

abstract class SpacingTokenValue implements DesignTokenValue {
  const factory SpacingTokenValue(final EdgeInsets value) = _$SpacingTokenValue;

  EdgeInsets get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SpacingTokenValueCopyWith<_$SpacingTokenValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FontStyleTokenValueCopyWith<$Res> {
  factory _$$FontStyleTokenValueCopyWith(_$FontStyleTokenValue value,
          $Res Function(_$FontStyleTokenValue) then) =
      __$$FontStyleTokenValueCopyWithImpl<$Res>;
  $Res call({TextStyle textStyle});
}

/// @nodoc
class __$$FontStyleTokenValueCopyWithImpl<$Res>
    extends _$DesignTokenValueCopyWithImpl<$Res>
    implements _$$FontStyleTokenValueCopyWith<$Res> {
  __$$FontStyleTokenValueCopyWithImpl(
      _$FontStyleTokenValue _value, $Res Function(_$FontStyleTokenValue) _then)
      : super(_value, (v) => _then(v as _$FontStyleTokenValue));

  @override
  _$FontStyleTokenValue get _value => super._value as _$FontStyleTokenValue;

  @override
  $Res call({
    Object? textStyle = freezed,
  }) {
    return _then(_$FontStyleTokenValue(
      textStyle: textStyle == freezed
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle,
    ));
  }
}

/// @nodoc

class _$FontStyleTokenValue
    with DiagnosticableTreeMixin
    implements FontStyleTokenValue {
  const _$FontStyleTokenValue({required this.textStyle});

  @override
  final TextStyle textStyle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DesignTokenValue.fontStyle(textStyle: $textStyle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DesignTokenValue.fontStyle'))
      ..add(DiagnosticsProperty('textStyle', textStyle));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FontStyleTokenValue &&
            const DeepCollectionEquality().equals(other.textStyle, textStyle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(textStyle));

  @JsonKey(ignore: true)
  @override
  _$$FontStyleTokenValueCopyWith<_$FontStyleTokenValue> get copyWith =>
      __$$FontStyleTokenValueCopyWithImpl<_$FontStyleTokenValue>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(double value) dimension,
    required TResult Function(@ColorTokenValueConverter() Color value) color,
    required TResult Function(double smoothing, BorderRadius radius) radius,
    required TResult Function(EdgeInsets value) spacing,
    required TResult Function(TextStyle textStyle) fontStyle,
    required TResult Function(List<IconPath> paths, Size size) icon,
  }) {
    return fontStyle(textStyle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
  }) {
    return fontStyle?.call(textStyle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
    required TResult orElse(),
  }) {
    if (fontStyle != null) {
      return fontStyle(textStyle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownTokenValue value) unknown,
    required TResult Function(SizeTokenValue value) dimension,
    required TResult Function(ColorTokenValue value) color,
    required TResult Function(RadiusTokenValue value) radius,
    required TResult Function(SpacingTokenValue value) spacing,
    required TResult Function(FontStyleTokenValue value) fontStyle,
    required TResult Function(IconTokenValue value) icon,
  }) {
    return fontStyle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
  }) {
    return fontStyle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
    required TResult orElse(),
  }) {
    if (fontStyle != null) {
      return fontStyle(this);
    }
    return orElse();
  }
}

abstract class FontStyleTokenValue implements DesignTokenValue {
  const factory FontStyleTokenValue({required final TextStyle textStyle}) =
      _$FontStyleTokenValue;

  TextStyle get textStyle => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FontStyleTokenValueCopyWith<_$FontStyleTokenValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IconTokenValueCopyWith<$Res> {
  factory _$$IconTokenValueCopyWith(
          _$IconTokenValue value, $Res Function(_$IconTokenValue) then) =
      __$$IconTokenValueCopyWithImpl<$Res>;
  $Res call({List<IconPath> paths, Size size});
}

/// @nodoc
class __$$IconTokenValueCopyWithImpl<$Res>
    extends _$DesignTokenValueCopyWithImpl<$Res>
    implements _$$IconTokenValueCopyWith<$Res> {
  __$$IconTokenValueCopyWithImpl(
      _$IconTokenValue _value, $Res Function(_$IconTokenValue) _then)
      : super(_value, (v) => _then(v as _$IconTokenValue));

  @override
  _$IconTokenValue get _value => super._value as _$IconTokenValue;

  @override
  $Res call({
    Object? paths = freezed,
    Object? size = freezed,
  }) {
    return _then(_$IconTokenValue(
      paths: paths == freezed
          ? _value._paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<IconPath>,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
    ));
  }
}

/// @nodoc

class _$IconTokenValue with DiagnosticableTreeMixin implements IconTokenValue {
  const _$IconTokenValue(
      {required final List<IconPath> paths, required this.size})
      : _paths = paths;

  final List<IconPath> _paths;
  @override
  List<IconPath> get paths {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paths);
  }

  @override
  final Size size;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DesignTokenValue.icon(paths: $paths, size: $size)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DesignTokenValue.icon'))
      ..add(DiagnosticsProperty('paths', paths))
      ..add(DiagnosticsProperty('size', size));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconTokenValue &&
            const DeepCollectionEquality().equals(other._paths, _paths) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_paths),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$$IconTokenValueCopyWith<_$IconTokenValue> get copyWith =>
      __$$IconTokenValueCopyWithImpl<_$IconTokenValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(double value) dimension,
    required TResult Function(@ColorTokenValueConverter() Color value) color,
    required TResult Function(double smoothing, BorderRadius radius) radius,
    required TResult Function(EdgeInsets value) spacing,
    required TResult Function(TextStyle textStyle) fontStyle,
    required TResult Function(List<IconPath> paths, Size size) icon,
  }) {
    return icon(paths, size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
  }) {
    return icon?.call(paths, size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(double value)? dimension,
    TResult Function(@ColorTokenValueConverter() Color value)? color,
    TResult Function(double smoothing, BorderRadius radius)? radius,
    TResult Function(EdgeInsets value)? spacing,
    TResult Function(TextStyle textStyle)? fontStyle,
    TResult Function(List<IconPath> paths, Size size)? icon,
    required TResult orElse(),
  }) {
    if (icon != null) {
      return icon(paths, size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownTokenValue value) unknown,
    required TResult Function(SizeTokenValue value) dimension,
    required TResult Function(ColorTokenValue value) color,
    required TResult Function(RadiusTokenValue value) radius,
    required TResult Function(SpacingTokenValue value) spacing,
    required TResult Function(FontStyleTokenValue value) fontStyle,
    required TResult Function(IconTokenValue value) icon,
  }) {
    return icon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
  }) {
    return icon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownTokenValue value)? unknown,
    TResult Function(SizeTokenValue value)? dimension,
    TResult Function(ColorTokenValue value)? color,
    TResult Function(RadiusTokenValue value)? radius,
    TResult Function(SpacingTokenValue value)? spacing,
    TResult Function(FontStyleTokenValue value)? fontStyle,
    TResult Function(IconTokenValue value)? icon,
    required TResult orElse(),
  }) {
    if (icon != null) {
      return icon(this);
    }
    return orElse();
  }
}

abstract class IconTokenValue implements DesignTokenValue {
  const factory IconTokenValue(
      {required final List<IconPath> paths,
      required final Size size}) = _$IconTokenValue;

  List<IconPath> get paths => throw _privateConstructorUsedError;
  Size get size => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$IconTokenValueCopyWith<_$IconTokenValue> get copyWith =>
      throw _privateConstructorUsedError;
}

IconPath _$IconPathFromJson(Map<String, dynamic> json) {
  return _IconPath.fromJson(json);
}

/// @nodoc
mixin _$IconPath {
  String get data => throw _privateConstructorUsedError;
  PathFillType get windingRule => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IconPathCopyWith<IconPath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconPathCopyWith<$Res> {
  factory $IconPathCopyWith(IconPath value, $Res Function(IconPath) then) =
      _$IconPathCopyWithImpl<$Res>;
  $Res call({String data, PathFillType windingRule});
}

/// @nodoc
class _$IconPathCopyWithImpl<$Res> implements $IconPathCopyWith<$Res> {
  _$IconPathCopyWithImpl(this._value, this._then);

  final IconPath _value;
  // ignore: unused_field
  final $Res Function(IconPath) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? windingRule = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      windingRule: windingRule == freezed
          ? _value.windingRule
          : windingRule // ignore: cast_nullable_to_non_nullable
              as PathFillType,
    ));
  }
}

/// @nodoc
abstract class _$$_IconPathCopyWith<$Res> implements $IconPathCopyWith<$Res> {
  factory _$$_IconPathCopyWith(
          _$_IconPath value, $Res Function(_$_IconPath) then) =
      __$$_IconPathCopyWithImpl<$Res>;
  @override
  $Res call({String data, PathFillType windingRule});
}

/// @nodoc
class __$$_IconPathCopyWithImpl<$Res> extends _$IconPathCopyWithImpl<$Res>
    implements _$$_IconPathCopyWith<$Res> {
  __$$_IconPathCopyWithImpl(
      _$_IconPath _value, $Res Function(_$_IconPath) _then)
      : super(_value, (v) => _then(v as _$_IconPath));

  @override
  _$_IconPath get _value => super._value as _$_IconPath;

  @override
  $Res call({
    Object? data = freezed,
    Object? windingRule = freezed,
  }) {
    return _then(_$_IconPath(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      windingRule: windingRule == freezed
          ? _value.windingRule
          : windingRule // ignore: cast_nullable_to_non_nullable
              as PathFillType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IconPath extends _IconPath with DiagnosticableTreeMixin {
  const _$_IconPath(
      {required this.data, this.windingRule = PathFillType.nonZero})
      : super._();

  factory _$_IconPath.fromJson(Map<String, dynamic> json) =>
      _$$_IconPathFromJson(json);

  @override
  final String data;
  @override
  @JsonKey()
  final PathFillType windingRule;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IconPath(data: $data, windingRule: $windingRule)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IconPath'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('windingRule', windingRule));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IconPath &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.windingRule, windingRule));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(windingRule));

  @JsonKey(ignore: true)
  @override
  _$$_IconPathCopyWith<_$_IconPath> get copyWith =>
      __$$_IconPathCopyWithImpl<_$_IconPath>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IconPathToJson(this);
  }
}

abstract class _IconPath extends IconPath {
  const factory _IconPath(
      {required final String data,
      final PathFillType windingRule}) = _$_IconPath;
  const _IconPath._() : super._();

  factory _IconPath.fromJson(Map<String, dynamic> json) = _$_IconPath.fromJson;

  @override
  String get data => throw _privateConstructorUsedError;
  @override
  PathFillType get windingRule => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IconPathCopyWith<_$_IconPath> get copyWith =>
      throw _privateConstructorUsedError;
}
