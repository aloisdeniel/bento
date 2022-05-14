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
mixin _$BentoWidget {
  String get name => throw _privateConstructorUsedError;
  CompilationUnit get unit => throw _privateConstructorUsedError;
  List<BentoWidgetVariant> get variants => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BentoWidgetCopyWith<BentoWidget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BentoWidgetCopyWith<$Res> {
  factory $BentoWidgetCopyWith(
          BentoWidget value, $Res Function(BentoWidget) then) =
      _$BentoWidgetCopyWithImpl<$Res>;
  $Res call(
      {String name, CompilationUnit unit, List<BentoWidgetVariant> variants});
}

/// @nodoc
class _$BentoWidgetCopyWithImpl<$Res> implements $BentoWidgetCopyWith<$Res> {
  _$BentoWidgetCopyWithImpl(this._value, this._then);

  final BentoWidget _value;
  // ignore: unused_field
  final $Res Function(BentoWidget) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? unit = freezed,
    Object? variants = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as CompilationUnit,
      variants: variants == freezed
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<BentoWidgetVariant>,
    ));
  }
}

/// @nodoc
abstract class _$$_BentoWidgetCopyWith<$Res>
    implements $BentoWidgetCopyWith<$Res> {
  factory _$$_BentoWidgetCopyWith(
          _$_BentoWidget value, $Res Function(_$_BentoWidget) then) =
      __$$_BentoWidgetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, CompilationUnit unit, List<BentoWidgetVariant> variants});
}

/// @nodoc
class __$$_BentoWidgetCopyWithImpl<$Res> extends _$BentoWidgetCopyWithImpl<$Res>
    implements _$$_BentoWidgetCopyWith<$Res> {
  __$$_BentoWidgetCopyWithImpl(
      _$_BentoWidget _value, $Res Function(_$_BentoWidget) _then)
      : super(_value, (v) => _then(v as _$_BentoWidget));

  @override
  _$_BentoWidget get _value => super._value as _$_BentoWidget;

  @override
  $Res call({
    Object? name = freezed,
    Object? unit = freezed,
    Object? variants = freezed,
  }) {
    return _then(_$_BentoWidget(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as CompilationUnit,
      variants: variants == freezed
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<BentoWidgetVariant>,
    ));
  }
}

/// @nodoc

class _$_BentoWidget extends _BentoWidget {
  const _$_BentoWidget(
      {required this.name,
      required this.unit,
      required final List<BentoWidgetVariant> variants})
      : _variants = variants,
        super._();

  @override
  final String name;
  @override
  final CompilationUnit unit;
  final List<BentoWidgetVariant> _variants;
  @override
  List<BentoWidgetVariant> get variants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  String toString() {
    return 'BentoWidget(name: $name, unit: $unit, variants: $variants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BentoWidget &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(_variants));

  @JsonKey(ignore: true)
  @override
  _$$_BentoWidgetCopyWith<_$_BentoWidget> get copyWith =>
      __$$_BentoWidgetCopyWithImpl<_$_BentoWidget>(this, _$identity);
}

abstract class _BentoWidget extends BentoWidget {
  const factory _BentoWidget(
      {required final String name,
      required final CompilationUnit unit,
      required final List<BentoWidgetVariant> variants}) = _$_BentoWidget;
  const _BentoWidget._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  CompilationUnit get unit => throw _privateConstructorUsedError;
  @override
  List<BentoWidgetVariant> get variants => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BentoWidgetCopyWith<_$_BentoWidget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BentoWidgetVariant {
  FunctionDeclaration get buildFunction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BentoWidgetVariantCopyWith<BentoWidgetVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BentoWidgetVariantCopyWith<$Res> {
  factory $BentoWidgetVariantCopyWith(
          BentoWidgetVariant value, $Res Function(BentoWidgetVariant) then) =
      _$BentoWidgetVariantCopyWithImpl<$Res>;
  $Res call({FunctionDeclaration buildFunction});
}

/// @nodoc
class _$BentoWidgetVariantCopyWithImpl<$Res>
    implements $BentoWidgetVariantCopyWith<$Res> {
  _$BentoWidgetVariantCopyWithImpl(this._value, this._then);

  final BentoWidgetVariant _value;
  // ignore: unused_field
  final $Res Function(BentoWidgetVariant) _then;

  @override
  $Res call({
    Object? buildFunction = freezed,
  }) {
    return _then(_value.copyWith(
      buildFunction: buildFunction == freezed
          ? _value.buildFunction
          : buildFunction // ignore: cast_nullable_to_non_nullable
              as FunctionDeclaration,
    ));
  }
}

/// @nodoc
abstract class _$$_BentoWidgetVariantCopyWith<$Res>
    implements $BentoWidgetVariantCopyWith<$Res> {
  factory _$$_BentoWidgetVariantCopyWith(_$_BentoWidgetVariant value,
          $Res Function(_$_BentoWidgetVariant) then) =
      __$$_BentoWidgetVariantCopyWithImpl<$Res>;
  @override
  $Res call({FunctionDeclaration buildFunction});
}

/// @nodoc
class __$$_BentoWidgetVariantCopyWithImpl<$Res>
    extends _$BentoWidgetVariantCopyWithImpl<$Res>
    implements _$$_BentoWidgetVariantCopyWith<$Res> {
  __$$_BentoWidgetVariantCopyWithImpl(
      _$_BentoWidgetVariant _value, $Res Function(_$_BentoWidgetVariant) _then)
      : super(_value, (v) => _then(v as _$_BentoWidgetVariant));

  @override
  _$_BentoWidgetVariant get _value => super._value as _$_BentoWidgetVariant;

  @override
  $Res call({
    Object? buildFunction = freezed,
  }) {
    return _then(_$_BentoWidgetVariant(
      buildFunction: buildFunction == freezed
          ? _value.buildFunction
          : buildFunction // ignore: cast_nullable_to_non_nullable
              as FunctionDeclaration,
    ));
  }
}

/// @nodoc

class _$_BentoWidgetVariant extends _BentoWidgetVariant {
  const _$_BentoWidgetVariant({required this.buildFunction}) : super._();

  @override
  final FunctionDeclaration buildFunction;

  @override
  String toString() {
    return 'BentoWidgetVariant(buildFunction: $buildFunction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BentoWidgetVariant &&
            const DeepCollectionEquality()
                .equals(other.buildFunction, buildFunction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(buildFunction));

  @JsonKey(ignore: true)
  @override
  _$$_BentoWidgetVariantCopyWith<_$_BentoWidgetVariant> get copyWith =>
      __$$_BentoWidgetVariantCopyWithImpl<_$_BentoWidgetVariant>(
          this, _$identity);
}

abstract class _BentoWidgetVariant extends BentoWidgetVariant {
  const factory _BentoWidgetVariant(
          {required final FunctionDeclaration buildFunction}) =
      _$_BentoWidgetVariant;
  const _BentoWidgetVariant._() : super._();

  @override
  FunctionDeclaration get buildFunction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BentoWidgetVariantCopyWith<_$_BentoWidgetVariant> get copyWith =>
      throw _privateConstructorUsedError;
}
