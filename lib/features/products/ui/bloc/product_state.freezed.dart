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
  DataResponse<List<ProductEntity>> get dataResponse =>
      throw _privateConstructorUsedError;
  List<ProductEntity> get displayedList => throw _privateConstructorUsedError;
  List<String> get productCategories => throw _privateConstructorUsedError;
  int get currentListPage => throw _privateConstructorUsedError;
  double get minPrice => throw _privateConstructorUsedError;
  double get maxPrice => throw _privateConstructorUsedError;
  ProductQuery get query => throw _privateConstructorUsedError;
  ProductEntity? get selectedProduct => throw _privateConstructorUsedError;

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
  $Res call(
      {DataResponse<List<ProductEntity>> dataResponse,
      List<ProductEntity> displayedList,
      List<String> productCategories,
      int currentListPage,
      double minPrice,
      double maxPrice,
      ProductQuery query,
      ProductEntity? selectedProduct});

  $DataResponseCopyWith<List<ProductEntity>, $Res> get dataResponse;
  $ProductQueryCopyWith<$Res> get query;
  $ProductEntityCopyWith<$Res>? get selectedProduct;
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
    Object? dataResponse = null,
    Object? displayedList = null,
    Object? productCategories = null,
    Object? currentListPage = null,
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? query = null,
    Object? selectedProduct = freezed,
  }) {
    return _then(_value.copyWith(
      dataResponse: null == dataResponse
          ? _value.dataResponse
          : dataResponse // ignore: cast_nullable_to_non_nullable
              as DataResponse<List<ProductEntity>>,
      displayedList: null == displayedList
          ? _value.displayedList
          : displayedList // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      productCategories: null == productCategories
          ? _value.productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentListPage: null == currentListPage
          ? _value.currentListPage
          : currentListPage // ignore: cast_nullable_to_non_nullable
              as int,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as ProductQuery,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataResponseCopyWith<List<ProductEntity>, $Res> get dataResponse {
    return $DataResponseCopyWith<List<ProductEntity>, $Res>(_value.dataResponse,
        (value) {
      return _then(_value.copyWith(dataResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductQueryCopyWith<$Res> get query {
    return $ProductQueryCopyWith<$Res>(_value.query, (value) {
      return _then(_value.copyWith(query: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res>? get selectedProduct {
    if (_value.selectedProduct == null) {
      return null;
    }

    return $ProductEntityCopyWith<$Res>(_value.selectedProduct!, (value) {
      return _then(_value.copyWith(selectedProduct: value) as $Val);
    });
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
  $Res call(
      {DataResponse<List<ProductEntity>> dataResponse,
      List<ProductEntity> displayedList,
      List<String> productCategories,
      int currentListPage,
      double minPrice,
      double maxPrice,
      ProductQuery query,
      ProductEntity? selectedProduct});

  @override
  $DataResponseCopyWith<List<ProductEntity>, $Res> get dataResponse;
  @override
  $ProductQueryCopyWith<$Res> get query;
  @override
  $ProductEntityCopyWith<$Res>? get selectedProduct;
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
    Object? dataResponse = null,
    Object? displayedList = null,
    Object? productCategories = null,
    Object? currentListPage = null,
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? query = null,
    Object? selectedProduct = freezed,
  }) {
    return _then(_$ProductScreenStateImpl(
      dataResponse: null == dataResponse
          ? _value.dataResponse
          : dataResponse // ignore: cast_nullable_to_non_nullable
              as DataResponse<List<ProductEntity>>,
      displayedList: null == displayedList
          ? _value._displayedList
          : displayedList // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      productCategories: null == productCategories
          ? _value._productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentListPage: null == currentListPage
          ? _value.currentListPage
          : currentListPage // ignore: cast_nullable_to_non_nullable
              as int,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as ProductQuery,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
    ));
  }
}

/// @nodoc

class _$ProductScreenStateImpl implements _ProductScreenState {
  _$ProductScreenStateImpl(
      {required this.dataResponse,
      final List<ProductEntity> displayedList = const [],
      final List<String> productCategories = const [],
      this.currentListPage = 0,
      this.minPrice = 0,
      this.maxPrice = 0,
      this.query = const ProductQuery(),
      this.selectedProduct})
      : _displayedList = displayedList,
        _productCategories = productCategories;

  @override
  final DataResponse<List<ProductEntity>> dataResponse;
  final List<ProductEntity> _displayedList;
  @override
  @JsonKey()
  List<ProductEntity> get displayedList {
    if (_displayedList is EqualUnmodifiableListView) return _displayedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_displayedList);
  }

  final List<String> _productCategories;
  @override
  @JsonKey()
  List<String> get productCategories {
    if (_productCategories is EqualUnmodifiableListView)
      return _productCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productCategories);
  }

  @override
  @JsonKey()
  final int currentListPage;
  @override
  @JsonKey()
  final double minPrice;
  @override
  @JsonKey()
  final double maxPrice;
  @override
  @JsonKey()
  final ProductQuery query;
  @override
  final ProductEntity? selectedProduct;

  @override
  String toString() {
    return 'ProductScreenState(dataResponse: $dataResponse, displayedList: $displayedList, productCategories: $productCategories, currentListPage: $currentListPage, minPrice: $minPrice, maxPrice: $maxPrice, query: $query, selectedProduct: $selectedProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductScreenStateImpl &&
            (identical(other.dataResponse, dataResponse) ||
                other.dataResponse == dataResponse) &&
            const DeepCollectionEquality()
                .equals(other._displayedList, _displayedList) &&
            const DeepCollectionEquality()
                .equals(other._productCategories, _productCategories) &&
            (identical(other.currentListPage, currentListPage) ||
                other.currentListPage == currentListPage) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.selectedProduct, selectedProduct) ||
                other.selectedProduct == selectedProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dataResponse,
      const DeepCollectionEquality().hash(_displayedList),
      const DeepCollectionEquality().hash(_productCategories),
      currentListPage,
      minPrice,
      maxPrice,
      query,
      selectedProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductScreenStateImplCopyWith<_$ProductScreenStateImpl> get copyWith =>
      __$$ProductScreenStateImplCopyWithImpl<_$ProductScreenStateImpl>(
          this, _$identity);
}

abstract class _ProductScreenState implements ProductScreenState {
  factory _ProductScreenState(
      {required final DataResponse<List<ProductEntity>> dataResponse,
      final List<ProductEntity> displayedList,
      final List<String> productCategories,
      final int currentListPage,
      final double minPrice,
      final double maxPrice,
      final ProductQuery query,
      final ProductEntity? selectedProduct}) = _$ProductScreenStateImpl;

  @override
  DataResponse<List<ProductEntity>> get dataResponse;
  @override
  List<ProductEntity> get displayedList;
  @override
  List<String> get productCategories;
  @override
  int get currentListPage;
  @override
  double get minPrice;
  @override
  double get maxPrice;
  @override
  ProductQuery get query;
  @override
  ProductEntity? get selectedProduct;
  @override
  @JsonKey(ignore: true)
  _$$ProductScreenStateImplCopyWith<_$ProductScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
