// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductQuery {
  List<String> get categories => throw _privateConstructorUsedError;
  RangeValues get priceRange => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductQueryCopyWith<ProductQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductQueryCopyWith<$Res> {
  factory $ProductQueryCopyWith(
          ProductQuery value, $Res Function(ProductQuery) then) =
      _$ProductQueryCopyWithImpl<$Res, ProductQuery>;
  @useResult
  $Res call(
      {List<String> categories, RangeValues priceRange, String searchQuery});
}

/// @nodoc
class _$ProductQueryCopyWithImpl<$Res, $Val extends ProductQuery>
    implements $ProductQueryCopyWith<$Res> {
  _$ProductQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? priceRange = null,
    Object? searchQuery = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductQueryImplCopyWith<$Res>
    implements $ProductQueryCopyWith<$Res> {
  factory _$$ProductQueryImplCopyWith(
          _$ProductQueryImpl value, $Res Function(_$ProductQueryImpl) then) =
      __$$ProductQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> categories, RangeValues priceRange, String searchQuery});
}

/// @nodoc
class __$$ProductQueryImplCopyWithImpl<$Res>
    extends _$ProductQueryCopyWithImpl<$Res, _$ProductQueryImpl>
    implements _$$ProductQueryImplCopyWith<$Res> {
  __$$ProductQueryImplCopyWithImpl(
      _$ProductQueryImpl _value, $Res Function(_$ProductQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? priceRange = null,
    Object? searchQuery = null,
  }) {
    return _then(_$ProductQueryImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductQueryImpl extends _ProductQuery {
  const _$ProductQueryImpl(
      {final List<String> categories = const [],
      this.priceRange = const RangeValues(0, 0),
      this.searchQuery = ''})
      : _categories = categories,
        super._();

  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final RangeValues priceRange;
  @override
  @JsonKey()
  final String searchQuery;

  @override
  String toString() {
    return 'ProductQuery(categories: $categories, priceRange: $priceRange, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductQueryImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      priceRange,
      searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductQueryImplCopyWith<_$ProductQueryImpl> get copyWith =>
      __$$ProductQueryImplCopyWithImpl<_$ProductQueryImpl>(this, _$identity);
}

abstract class _ProductQuery extends ProductQuery {
  const factory _ProductQuery(
      {final List<String> categories,
      final RangeValues priceRange,
      final String searchQuery}) = _$ProductQueryImpl;
  const _ProductQuery._() : super._();

  @override
  List<String> get categories;
  @override
  RangeValues get priceRange;
  @override
  String get searchQuery;
  @override
  @JsonKey(ignore: true)
  _$$ProductQueryImplCopyWith<_$ProductQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
