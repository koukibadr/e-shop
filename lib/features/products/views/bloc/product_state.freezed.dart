// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductScreenState {
  List<ProductModel> get productModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductScreenStateCopyWith<ProductScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductScreenStateCopyWith<$Res> {
  factory $ProductScreenStateCopyWith(
          ProductScreenState value, $Res Function(ProductScreenState) then) =
      _$ProductScreenStateCopyWithImpl<$Res, ProductScreenState>;
  @useResult
  $Res call({List<ProductModel> productModel});
}

/// @nodoc
class _$ProductScreenStateCopyWithImpl<$Res, $Val extends ProductScreenState>
    implements $ProductScreenStateCopyWith<$Res> {
  _$ProductScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productModel = null,
  }) {
    return _then(_value.copyWith(
      productModel: null == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductScreenStateImplCopyWith<$Res>
    implements $ProductScreenStateCopyWith<$Res> {
  factory _$$ProductScreenStateImplCopyWith(_$ProductScreenStateImpl value,
          $Res Function(_$ProductScreenStateImpl) then) =
      __$$ProductScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel> productModel});
}

/// @nodoc
class __$$ProductScreenStateImplCopyWithImpl<$Res>
    extends _$ProductScreenStateCopyWithImpl<$Res, _$ProductScreenStateImpl>
    implements _$$ProductScreenStateImplCopyWith<$Res> {
  __$$ProductScreenStateImplCopyWithImpl(_$ProductScreenStateImpl _value,
      $Res Function(_$ProductScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productModel = null,
  }) {
    return _then(_$ProductScreenStateImpl(
      productModel: null == productModel
          ? _value._productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$ProductScreenStateImpl implements _ProductScreenState {
  _$ProductScreenStateImpl({final List<ProductModel> productModel = const []})
      : _productModel = productModel;

  final List<ProductModel> _productModel;
  @override
  @JsonKey()
  List<ProductModel> get productModel {
    if (_productModel is EqualUnmodifiableListView) return _productModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productModel);
  }

  @override
  String toString() {
    return 'ProductScreenState(productModel: $productModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductScreenStateImpl &&
            const DeepCollectionEquality()
                .equals(other._productModel, _productModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductScreenStateImplCopyWith<_$ProductScreenStateImpl> get copyWith =>
      __$$ProductScreenStateImplCopyWithImpl<_$ProductScreenStateImpl>(
          this, _$identity);
}

abstract class _ProductScreenState implements ProductScreenState {
  factory _ProductScreenState({final List<ProductModel> productModel}) =
      _$ProductScreenStateImpl;

  @override
  List<ProductModel> get productModel;
  @override
  @JsonKey(ignore: true)
  _$$ProductScreenStateImplCopyWith<_$ProductScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
