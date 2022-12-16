// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductEventStart value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductEventStart value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductEventStart value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductEventStartCopyWith<$Res> {
  factory _$$ProductEventStartCopyWith(
          _$ProductEventStart value, $Res Function(_$ProductEventStart) then) =
      __$$ProductEventStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductEventStartCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ProductEventStart>
    implements _$$ProductEventStartCopyWith<$Res> {
  __$$ProductEventStartCopyWithImpl(
      _$ProductEventStart _value, $Res Function(_$ProductEventStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductEventStart implements ProductEventStart {
  const _$ProductEventStart();

  @override
  String toString() {
    return 'ProductEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductEventStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductEventStart value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductEventStart value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductEventStart value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ProductEventStart implements ProductEvent {
  const factory ProductEventStart() = _$ProductEventStart;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductEntity> product) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductEntity> product)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductEntity> product)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductInitialCopyWith<$Res> {
  factory _$$ProductInitialCopyWith(
          _$ProductInitial value, $Res Function(_$ProductInitial) then) =
      __$$ProductInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductInitialCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductInitial>
    implements _$$ProductInitialCopyWith<$Res> {
  __$$ProductInitialCopyWithImpl(
      _$ProductInitial _value, $Res Function(_$ProductInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductInitial implements ProductInitial {
  const _$ProductInitial();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductEntity> product) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductEntity> product)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductEntity> product)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProductInitial implements ProductState {
  const factory ProductInitial() = _$ProductInitial;
}

/// @nodoc
abstract class _$$ProductLoadingCopyWith<$Res> {
  factory _$$ProductLoadingCopyWith(
          _$ProductLoading value, $Res Function(_$ProductLoading) then) =
      __$$ProductLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductLoadingCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoading>
    implements _$$ProductLoadingCopyWith<$Res> {
  __$$ProductLoadingCopyWithImpl(
      _$ProductLoading _value, $Res Function(_$ProductLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductLoading implements ProductLoading {
  const _$ProductLoading();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductEntity> product) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductEntity> product)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductEntity> product)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductLoading implements ProductState {
  const factory ProductLoading() = _$ProductLoading;
}

/// @nodoc
abstract class _$$ProductLoadedCopyWith<$Res> {
  factory _$$ProductLoadedCopyWith(
          _$ProductLoaded value, $Res Function(_$ProductLoaded) then) =
      __$$ProductLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductEntity> product});
}

/// @nodoc
class __$$ProductLoadedCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoaded>
    implements _$$ProductLoadedCopyWith<$Res> {
  __$$ProductLoadedCopyWithImpl(
      _$ProductLoaded _value, $Res Function(_$ProductLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductLoaded(
      null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc

class _$ProductLoaded implements ProductLoaded {
  const _$ProductLoaded(final List<ProductEntity> product) : _product = product;

  final List<ProductEntity> _product;
  @override
  List<ProductEntity> get product {
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  @override
  String toString() {
    return 'ProductState.loaded(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLoaded &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLoadedCopyWith<_$ProductLoaded> get copyWith =>
      __$$ProductLoadedCopyWithImpl<_$ProductLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductEntity> product) loaded,
  }) {
    return loaded(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductEntity> product)? loaded,
  }) {
    return loaded?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductEntity> product)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitial value) initial,
    required TResult Function(ProductLoading value) loading,
    required TResult Function(ProductLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitial value)? initial,
    TResult? Function(ProductLoading value)? loading,
    TResult? Function(ProductLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitial value)? initial,
    TResult Function(ProductLoading value)? loading,
    TResult Function(ProductLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProductLoaded implements ProductState {
  const factory ProductLoaded(final List<ProductEntity> product) =
      _$ProductLoaded;

  List<ProductEntity> get product;
  @JsonKey(ignore: true)
  _$$ProductLoadedCopyWith<_$ProductLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
