// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BentoProjectState {
  String get name => throw _privateConstructorUsedError;
  List<BentoItemState<BentoTheme>> get themes =>
      throw _privateConstructorUsedError;
  List<BentoItemState<BentoWidget>> get widgets =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BentoProjectStateCopyWith<BentoProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BentoProjectStateCopyWith<$Res> {
  factory $BentoProjectStateCopyWith(
          BentoProjectState value, $Res Function(BentoProjectState) then) =
      _$BentoProjectStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List<BentoItemState<BentoTheme>> themes,
      List<BentoItemState<BentoWidget>> widgets});
}

/// @nodoc
class _$BentoProjectStateCopyWithImpl<$Res>
    implements $BentoProjectStateCopyWith<$Res> {
  _$BentoProjectStateCopyWithImpl(this._value, this._then);

  final BentoProjectState _value;
  // ignore: unused_field
  final $Res Function(BentoProjectState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? themes = freezed,
    Object? widgets = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      themes: themes == freezed
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<BentoItemState<BentoTheme>>,
      widgets: widgets == freezed
          ? _value.widgets
          : widgets // ignore: cast_nullable_to_non_nullable
              as List<BentoItemState<BentoWidget>>,
    ));
  }
}

/// @nodoc
abstract class _$$_BentoProjectStateCopyWith<$Res>
    implements $BentoProjectStateCopyWith<$Res> {
  factory _$$_BentoProjectStateCopyWith(_$_BentoProjectState value,
          $Res Function(_$_BentoProjectState) then) =
      __$$_BentoProjectStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      List<BentoItemState<BentoTheme>> themes,
      List<BentoItemState<BentoWidget>> widgets});
}

/// @nodoc
class __$$_BentoProjectStateCopyWithImpl<$Res>
    extends _$BentoProjectStateCopyWithImpl<$Res>
    implements _$$_BentoProjectStateCopyWith<$Res> {
  __$$_BentoProjectStateCopyWithImpl(
      _$_BentoProjectState _value, $Res Function(_$_BentoProjectState) _then)
      : super(_value, (v) => _then(v as _$_BentoProjectState));

  @override
  _$_BentoProjectState get _value => super._value as _$_BentoProjectState;

  @override
  $Res call({
    Object? name = freezed,
    Object? themes = freezed,
    Object? widgets = freezed,
  }) {
    return _then(_$_BentoProjectState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      themes: themes == freezed
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<BentoItemState<BentoTheme>>,
      widgets: widgets == freezed
          ? _value._widgets
          : widgets // ignore: cast_nullable_to_non_nullable
              as List<BentoItemState<BentoWidget>>,
    ));
  }
}

/// @nodoc

class _$_BentoProjectState extends _BentoProjectState {
  const _$_BentoProjectState(
      {required this.name,
      required final List<BentoItemState<BentoTheme>> themes,
      required final List<BentoItemState<BentoWidget>> widgets})
      : _themes = themes,
        _widgets = widgets,
        super._();

  @override
  final String name;
  final List<BentoItemState<BentoTheme>> _themes;
  @override
  List<BentoItemState<BentoTheme>> get themes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themes);
  }

  final List<BentoItemState<BentoWidget>> _widgets;
  @override
  List<BentoItemState<BentoWidget>> get widgets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_widgets);
  }

  @override
  String toString() {
    return 'BentoProjectState(name: $name, themes: $themes, widgets: $widgets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BentoProjectState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._themes, _themes) &&
            const DeepCollectionEquality().equals(other._widgets, _widgets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_themes),
      const DeepCollectionEquality().hash(_widgets));

  @JsonKey(ignore: true)
  @override
  _$$_BentoProjectStateCopyWith<_$_BentoProjectState> get copyWith =>
      __$$_BentoProjectStateCopyWithImpl<_$_BentoProjectState>(
          this, _$identity);
}

abstract class _BentoProjectState extends BentoProjectState {
  const factory _BentoProjectState(
          {required final String name,
          required final List<BentoItemState<BentoTheme>> themes,
          required final List<BentoItemState<BentoWidget>> widgets}) =
      _$_BentoProjectState;
  const _BentoProjectState._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<BentoItemState<BentoTheme>> get themes =>
      throw _privateConstructorUsedError;
  @override
  List<BentoItemState<BentoWidget>> get widgets =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BentoProjectStateCopyWith<_$_BentoProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BentoItemState<T> {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, BentoCompilationState<T> state, String source)
        file,
    required TResult Function(String name, List<BentoItemState<T>> children)
        directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name, BentoCompilationState<T> state, String source)?
        file,
    TResult Function(String name, List<BentoItemState<T>> children)? directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name, BentoCompilationState<T> state, String source)?
        file,
    TResult Function(String name, List<BentoItemState<T>> children)? directory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BentoFileState<T> value) file,
    required TResult Function(BentoDirectoryState<T> value) directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BentoFileState<T> value)? file,
    TResult Function(BentoDirectoryState<T> value)? directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BentoFileState<T> value)? file,
    TResult Function(BentoDirectoryState<T> value)? directory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BentoItemStateCopyWith<T, BentoItemState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BentoItemStateCopyWith<T, $Res> {
  factory $BentoItemStateCopyWith(
          BentoItemState<T> value, $Res Function(BentoItemState<T>) then) =
      _$BentoItemStateCopyWithImpl<T, $Res>;
  $Res call({String name});
}

/// @nodoc
class _$BentoItemStateCopyWithImpl<T, $Res>
    implements $BentoItemStateCopyWith<T, $Res> {
  _$BentoItemStateCopyWithImpl(this._value, this._then);

  final BentoItemState<T> _value;
  // ignore: unused_field
  final $Res Function(BentoItemState<T>) _then;

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
abstract class _$$BentoFileStateCopyWith<T, $Res>
    implements $BentoItemStateCopyWith<T, $Res> {
  factory _$$BentoFileStateCopyWith(
          _$BentoFileState<T> value, $Res Function(_$BentoFileState<T>) then) =
      __$$BentoFileStateCopyWithImpl<T, $Res>;
  @override
  $Res call({String name, BentoCompilationState<T> state, String source});

  $BentoCompilationStateCopyWith<T, $Res> get state;
}

/// @nodoc
class __$$BentoFileStateCopyWithImpl<T, $Res>
    extends _$BentoItemStateCopyWithImpl<T, $Res>
    implements _$$BentoFileStateCopyWith<T, $Res> {
  __$$BentoFileStateCopyWithImpl(
      _$BentoFileState<T> _value, $Res Function(_$BentoFileState<T>) _then)
      : super(_value, (v) => _then(v as _$BentoFileState<T>));

  @override
  _$BentoFileState<T> get _value => super._value as _$BentoFileState<T>;

  @override
  $Res call({
    Object? name = freezed,
    Object? state = freezed,
    Object? source = freezed,
  }) {
    return _then(_$BentoFileState<T>(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BentoCompilationState<T>,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $BentoCompilationStateCopyWith<T, $Res> get state {
    return $BentoCompilationStateCopyWith<T, $Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$BentoFileState<T> extends BentoFileState<T> {
  const _$BentoFileState(
      {required this.name, required this.state, required this.source})
      : super._();

  @override
  final String name;
  @override
  final BentoCompilationState<T> state;
  @override
  final String source;

  @override
  String toString() {
    return 'BentoItemState<$T>.file(name: $name, state: $state, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BentoFileState<T> &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(source));

  @JsonKey(ignore: true)
  @override
  _$$BentoFileStateCopyWith<T, _$BentoFileState<T>> get copyWith =>
      __$$BentoFileStateCopyWithImpl<T, _$BentoFileState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, BentoCompilationState<T> state, String source)
        file,
    required TResult Function(String name, List<BentoItemState<T>> children)
        directory,
  }) {
    return file(name, state, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name, BentoCompilationState<T> state, String source)?
        file,
    TResult Function(String name, List<BentoItemState<T>> children)? directory,
  }) {
    return file?.call(name, state, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name, BentoCompilationState<T> state, String source)?
        file,
    TResult Function(String name, List<BentoItemState<T>> children)? directory,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(name, state, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BentoFileState<T> value) file,
    required TResult Function(BentoDirectoryState<T> value) directory,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BentoFileState<T> value)? file,
    TResult Function(BentoDirectoryState<T> value)? directory,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BentoFileState<T> value)? file,
    TResult Function(BentoDirectoryState<T> value)? directory,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }
}

abstract class BentoFileState<T> extends BentoItemState<T> {
  const factory BentoFileState(
      {required final String name,
      required final BentoCompilationState<T> state,
      required final String source}) = _$BentoFileState<T>;
  const BentoFileState._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  BentoCompilationState<T> get state => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$BentoFileStateCopyWith<T, _$BentoFileState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BentoDirectoryStateCopyWith<T, $Res>
    implements $BentoItemStateCopyWith<T, $Res> {
  factory _$$BentoDirectoryStateCopyWith(_$BentoDirectoryState<T> value,
          $Res Function(_$BentoDirectoryState<T>) then) =
      __$$BentoDirectoryStateCopyWithImpl<T, $Res>;
  @override
  $Res call({String name, List<BentoItemState<T>> children});
}

/// @nodoc
class __$$BentoDirectoryStateCopyWithImpl<T, $Res>
    extends _$BentoItemStateCopyWithImpl<T, $Res>
    implements _$$BentoDirectoryStateCopyWith<T, $Res> {
  __$$BentoDirectoryStateCopyWithImpl(_$BentoDirectoryState<T> _value,
      $Res Function(_$BentoDirectoryState<T>) _then)
      : super(_value, (v) => _then(v as _$BentoDirectoryState<T>));

  @override
  _$BentoDirectoryState<T> get _value =>
      super._value as _$BentoDirectoryState<T>;

  @override
  $Res call({
    Object? name = freezed,
    Object? children = freezed,
  }) {
    return _then(_$BentoDirectoryState<T>(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      children: children == freezed
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BentoItemState<T>>,
    ));
  }
}

/// @nodoc

class _$BentoDirectoryState<T> extends BentoDirectoryState<T> {
  const _$BentoDirectoryState(
      {required this.name, required final List<BentoItemState<T>> children})
      : _children = children,
        super._();

  @override
  final String name;
  final List<BentoItemState<T>> _children;
  @override
  List<BentoItemState<T>> get children {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'BentoItemState<$T>.directory(name: $name, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BentoDirectoryState<T> &&
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
  _$$BentoDirectoryStateCopyWith<T, _$BentoDirectoryState<T>> get copyWith =>
      __$$BentoDirectoryStateCopyWithImpl<T, _$BentoDirectoryState<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, BentoCompilationState<T> state, String source)
        file,
    required TResult Function(String name, List<BentoItemState<T>> children)
        directory,
  }) {
    return directory(name, children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name, BentoCompilationState<T> state, String source)?
        file,
    TResult Function(String name, List<BentoItemState<T>> children)? directory,
  }) {
    return directory?.call(name, children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name, BentoCompilationState<T> state, String source)?
        file,
    TResult Function(String name, List<BentoItemState<T>> children)? directory,
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
    required TResult Function(BentoFileState<T> value) file,
    required TResult Function(BentoDirectoryState<T> value) directory,
  }) {
    return directory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BentoFileState<T> value)? file,
    TResult Function(BentoDirectoryState<T> value)? directory,
  }) {
    return directory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BentoFileState<T> value)? file,
    TResult Function(BentoDirectoryState<T> value)? directory,
    required TResult orElse(),
  }) {
    if (directory != null) {
      return directory(this);
    }
    return orElse();
  }
}

abstract class BentoDirectoryState<T> extends BentoItemState<T> {
  const factory BentoDirectoryState(
          {required final String name,
          required final List<BentoItemState<T>> children}) =
      _$BentoDirectoryState<T>;
  const BentoDirectoryState._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  List<BentoItemState<T>> get children => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$BentoDirectoryStateCopyWith<T, _$BentoDirectoryState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BentoCompilationState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BentoCompilationSuccessState<T> value) success,
    required TResult Function(BentoCompilationFailureState<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BentoCompilationSuccessState<T> value)? success,
    TResult Function(BentoCompilationFailureState<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BentoCompilationSuccessState<T> value)? success,
    TResult Function(BentoCompilationFailureState<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BentoCompilationStateCopyWith<T, $Res> {
  factory $BentoCompilationStateCopyWith(BentoCompilationState<T> value,
          $Res Function(BentoCompilationState<T>) then) =
      _$BentoCompilationStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$BentoCompilationStateCopyWithImpl<T, $Res>
    implements $BentoCompilationStateCopyWith<T, $Res> {
  _$BentoCompilationStateCopyWithImpl(this._value, this._then);

  final BentoCompilationState<T> _value;
  // ignore: unused_field
  final $Res Function(BentoCompilationState<T>) _then;
}

/// @nodoc
abstract class _$$BentoCompilationSuccessStateCopyWith<T, $Res> {
  factory _$$BentoCompilationSuccessStateCopyWith(
          _$BentoCompilationSuccessState<T> value,
          $Res Function(_$BentoCompilationSuccessState<T>) then) =
      __$$BentoCompilationSuccessStateCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$$BentoCompilationSuccessStateCopyWithImpl<T, $Res>
    extends _$BentoCompilationStateCopyWithImpl<T, $Res>
    implements _$$BentoCompilationSuccessStateCopyWith<T, $Res> {
  __$$BentoCompilationSuccessStateCopyWithImpl(
      _$BentoCompilationSuccessState<T> _value,
      $Res Function(_$BentoCompilationSuccessState<T>) _then)
      : super(_value, (v) => _then(v as _$BentoCompilationSuccessState<T>));

  @override
  _$BentoCompilationSuccessState<T> get _value =>
      super._value as _$BentoCompilationSuccessState<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$BentoCompilationSuccessState<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$BentoCompilationSuccessState<T>
    extends BentoCompilationSuccessState<T> {
  const _$BentoCompilationSuccessState(this.value) : super._();

  @override
  final T value;

  @override
  String toString() {
    return 'BentoCompilationState<$T>.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BentoCompilationSuccessState<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$BentoCompilationSuccessStateCopyWith<T, _$BentoCompilationSuccessState<T>>
      get copyWith => __$$BentoCompilationSuccessStateCopyWithImpl<T,
          _$BentoCompilationSuccessState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(String error) failure,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(String error)? failure,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BentoCompilationSuccessState<T> value) success,
    required TResult Function(BentoCompilationFailureState<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BentoCompilationSuccessState<T> value)? success,
    TResult Function(BentoCompilationFailureState<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BentoCompilationSuccessState<T> value)? success,
    TResult Function(BentoCompilationFailureState<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BentoCompilationSuccessState<T>
    extends BentoCompilationState<T> {
  const factory BentoCompilationSuccessState(final T value) =
      _$BentoCompilationSuccessState<T>;
  const BentoCompilationSuccessState._() : super._();

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BentoCompilationSuccessStateCopyWith<T, _$BentoCompilationSuccessState<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BentoCompilationFailureStateCopyWith<T, $Res> {
  factory _$$BentoCompilationFailureStateCopyWith(
          _$BentoCompilationFailureState<T> value,
          $Res Function(_$BentoCompilationFailureState<T>) then) =
      __$$BentoCompilationFailureStateCopyWithImpl<T, $Res>;
  $Res call({String error});
}

/// @nodoc
class __$$BentoCompilationFailureStateCopyWithImpl<T, $Res>
    extends _$BentoCompilationStateCopyWithImpl<T, $Res>
    implements _$$BentoCompilationFailureStateCopyWith<T, $Res> {
  __$$BentoCompilationFailureStateCopyWithImpl(
      _$BentoCompilationFailureState<T> _value,
      $Res Function(_$BentoCompilationFailureState<T>) _then)
      : super(_value, (v) => _then(v as _$BentoCompilationFailureState<T>));

  @override
  _$BentoCompilationFailureState<T> get _value =>
      super._value as _$BentoCompilationFailureState<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$BentoCompilationFailureState<T>(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BentoCompilationFailureState<T>
    extends BentoCompilationFailureState<T> {
  const _$BentoCompilationFailureState({required this.error}) : super._();

  @override
  final String error;

  @override
  String toString() {
    return 'BentoCompilationState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BentoCompilationFailureState<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$BentoCompilationFailureStateCopyWith<T, _$BentoCompilationFailureState<T>>
      get copyWith => __$$BentoCompilationFailureStateCopyWithImpl<T,
          _$BentoCompilationFailureState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BentoCompilationSuccessState<T> value) success,
    required TResult Function(BentoCompilationFailureState<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BentoCompilationSuccessState<T> value)? success,
    TResult Function(BentoCompilationFailureState<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BentoCompilationSuccessState<T> value)? success,
    TResult Function(BentoCompilationFailureState<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class BentoCompilationFailureState<T>
    extends BentoCompilationState<T> {
  const factory BentoCompilationFailureState({required final String error}) =
      _$BentoCompilationFailureState<T>;
  const BentoCompilationFailureState._() : super._();

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BentoCompilationFailureStateCopyWith<T, _$BentoCompilationFailureState<T>>
      get copyWith => throw _privateConstructorUsedError;
}
