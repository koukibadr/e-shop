// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllData,
    required TResult Function() getNextPage,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String category) removeCategoryFromFilter,
    required TResult Function(String search) searchByKeyWord,
    required TResult Function(RangeValues rangeValues) filterByPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllData,
    TResult? Function()? getNextPage,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String category)? removeCategoryFromFilter,
    TResult? Function(String search)? searchByKeyWord,
    TResult? Function(RangeValues rangeValues)? filterByPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllData,
    TResult Function()? getNextPage,
    TResult Function(String category)? filterByCategory,
    TResult Function(String category)? removeCategoryFromFilter,
    TResult Function(String search)? searchByKeyWord,
    TResult Function(RangeValues rangeValues)? filterByPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProductsEvent value) getAllData,
    required TResult Function(GetNextPageEvent value) getNextPage,
    required TResult Function(FilterByCategoryEvent value) filterByCategory,
    required TResult Function(RemoveCategoryFromFilterEvent value)
        removeCategoryFromFilter,
    required TResult Function(SearchByKeyWordEvent value) searchByKeyWord,
    required TResult Function(FilterByPriceEvent value) filterByPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProductsEvent value)? getAllData,
    TResult? Function(GetNextPageEvent value)? getNextPage,
    TResult? Function(FilterByCategoryEvent value)? filterByCategory,
    TResult? Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult? Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult? Function(FilterByPriceEvent value)? filterByPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProductsEvent value)? getAllData,
    TResult Function(GetNextPageEvent value)? getNextPage,
    TResult Function(FilterByCategoryEvent value)? filterByCategory,
    TResult Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult Function(FilterByPriceEvent value)? filterByPrice,
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
abstract class _$$GetAllProductsEventImplCopyWith<$Res> {
  factory _$$GetAllProductsEventImplCopyWith(_$GetAllProductsEventImpl value,
          $Res Function(_$GetAllProductsEventImpl) then) =
      __$$GetAllProductsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllProductsEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetAllProductsEventImpl>
    implements _$$GetAllProductsEventImplCopyWith<$Res> {
  __$$GetAllProductsEventImplCopyWithImpl(_$GetAllProductsEventImpl _value,
      $Res Function(_$GetAllProductsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllProductsEventImpl implements GetAllProductsEvent {
  _$GetAllProductsEventImpl();

  @override
  String toString() {
    return 'ProductEvent.getAllData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllProductsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllData,
    required TResult Function() getNextPage,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String category) removeCategoryFromFilter,
    required TResult Function(String search) searchByKeyWord,
    required TResult Function(RangeValues rangeValues) filterByPrice,
  }) {
    return getAllData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllData,
    TResult? Function()? getNextPage,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String category)? removeCategoryFromFilter,
    TResult? Function(String search)? searchByKeyWord,
    TResult? Function(RangeValues rangeValues)? filterByPrice,
  }) {
    return getAllData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllData,
    TResult Function()? getNextPage,
    TResult Function(String category)? filterByCategory,
    TResult Function(String category)? removeCategoryFromFilter,
    TResult Function(String search)? searchByKeyWord,
    TResult Function(RangeValues rangeValues)? filterByPrice,
    required TResult orElse(),
  }) {
    if (getAllData != null) {
      return getAllData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProductsEvent value) getAllData,
    required TResult Function(GetNextPageEvent value) getNextPage,
    required TResult Function(FilterByCategoryEvent value) filterByCategory,
    required TResult Function(RemoveCategoryFromFilterEvent value)
        removeCategoryFromFilter,
    required TResult Function(SearchByKeyWordEvent value) searchByKeyWord,
    required TResult Function(FilterByPriceEvent value) filterByPrice,
  }) {
    return getAllData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProductsEvent value)? getAllData,
    TResult? Function(GetNextPageEvent value)? getNextPage,
    TResult? Function(FilterByCategoryEvent value)? filterByCategory,
    TResult? Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult? Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult? Function(FilterByPriceEvent value)? filterByPrice,
  }) {
    return getAllData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProductsEvent value)? getAllData,
    TResult Function(GetNextPageEvent value)? getNextPage,
    TResult Function(FilterByCategoryEvent value)? filterByCategory,
    TResult Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult Function(FilterByPriceEvent value)? filterByPrice,
    required TResult orElse(),
  }) {
    if (getAllData != null) {
      return getAllData(this);
    }
    return orElse();
  }
}

abstract class GetAllProductsEvent implements ProductEvent {
  factory GetAllProductsEvent() = _$GetAllProductsEventImpl;
}

/// @nodoc
abstract class _$$GetNextPageEventImplCopyWith<$Res> {
  factory _$$GetNextPageEventImplCopyWith(_$GetNextPageEventImpl value,
          $Res Function(_$GetNextPageEventImpl) then) =
      __$$GetNextPageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNextPageEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetNextPageEventImpl>
    implements _$$GetNextPageEventImplCopyWith<$Res> {
  __$$GetNextPageEventImplCopyWithImpl(_$GetNextPageEventImpl _value,
      $Res Function(_$GetNextPageEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNextPageEventImpl implements GetNextPageEvent {
  _$GetNextPageEventImpl();

  @override
  String toString() {
    return 'ProductEvent.getNextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNextPageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllData,
    required TResult Function() getNextPage,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String category) removeCategoryFromFilter,
    required TResult Function(String search) searchByKeyWord,
    required TResult Function(RangeValues rangeValues) filterByPrice,
  }) {
    return getNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllData,
    TResult? Function()? getNextPage,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String category)? removeCategoryFromFilter,
    TResult? Function(String search)? searchByKeyWord,
    TResult? Function(RangeValues rangeValues)? filterByPrice,
  }) {
    return getNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllData,
    TResult Function()? getNextPage,
    TResult Function(String category)? filterByCategory,
    TResult Function(String category)? removeCategoryFromFilter,
    TResult Function(String search)? searchByKeyWord,
    TResult Function(RangeValues rangeValues)? filterByPrice,
    required TResult orElse(),
  }) {
    if (getNextPage != null) {
      return getNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProductsEvent value) getAllData,
    required TResult Function(GetNextPageEvent value) getNextPage,
    required TResult Function(FilterByCategoryEvent value) filterByCategory,
    required TResult Function(RemoveCategoryFromFilterEvent value)
        removeCategoryFromFilter,
    required TResult Function(SearchByKeyWordEvent value) searchByKeyWord,
    required TResult Function(FilterByPriceEvent value) filterByPrice,
  }) {
    return getNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProductsEvent value)? getAllData,
    TResult? Function(GetNextPageEvent value)? getNextPage,
    TResult? Function(FilterByCategoryEvent value)? filterByCategory,
    TResult? Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult? Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult? Function(FilterByPriceEvent value)? filterByPrice,
  }) {
    return getNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProductsEvent value)? getAllData,
    TResult Function(GetNextPageEvent value)? getNextPage,
    TResult Function(FilterByCategoryEvent value)? filterByCategory,
    TResult Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult Function(FilterByPriceEvent value)? filterByPrice,
    required TResult orElse(),
  }) {
    if (getNextPage != null) {
      return getNextPage(this);
    }
    return orElse();
  }
}

abstract class GetNextPageEvent implements ProductEvent {
  factory GetNextPageEvent() = _$GetNextPageEventImpl;
}

/// @nodoc
abstract class _$$FilterByCategoryEventImplCopyWith<$Res> {
  factory _$$FilterByCategoryEventImplCopyWith(
          _$FilterByCategoryEventImpl value,
          $Res Function(_$FilterByCategoryEventImpl) then) =
      __$$FilterByCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$FilterByCategoryEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FilterByCategoryEventImpl>
    implements _$$FilterByCategoryEventImplCopyWith<$Res> {
  __$$FilterByCategoryEventImplCopyWithImpl(_$FilterByCategoryEventImpl _value,
      $Res Function(_$FilterByCategoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FilterByCategoryEventImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterByCategoryEventImpl implements FilterByCategoryEvent {
  _$FilterByCategoryEventImpl(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'ProductEvent.filterByCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByCategoryEventImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByCategoryEventImplCopyWith<_$FilterByCategoryEventImpl>
      get copyWith => __$$FilterByCategoryEventImplCopyWithImpl<
          _$FilterByCategoryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllData,
    required TResult Function() getNextPage,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String category) removeCategoryFromFilter,
    required TResult Function(String search) searchByKeyWord,
    required TResult Function(RangeValues rangeValues) filterByPrice,
  }) {
    return filterByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllData,
    TResult? Function()? getNextPage,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String category)? removeCategoryFromFilter,
    TResult? Function(String search)? searchByKeyWord,
    TResult? Function(RangeValues rangeValues)? filterByPrice,
  }) {
    return filterByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllData,
    TResult Function()? getNextPage,
    TResult Function(String category)? filterByCategory,
    TResult Function(String category)? removeCategoryFromFilter,
    TResult Function(String search)? searchByKeyWord,
    TResult Function(RangeValues rangeValues)? filterByPrice,
    required TResult orElse(),
  }) {
    if (filterByCategory != null) {
      return filterByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProductsEvent value) getAllData,
    required TResult Function(GetNextPageEvent value) getNextPage,
    required TResult Function(FilterByCategoryEvent value) filterByCategory,
    required TResult Function(RemoveCategoryFromFilterEvent value)
        removeCategoryFromFilter,
    required TResult Function(SearchByKeyWordEvent value) searchByKeyWord,
    required TResult Function(FilterByPriceEvent value) filterByPrice,
  }) {
    return filterByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProductsEvent value)? getAllData,
    TResult? Function(GetNextPageEvent value)? getNextPage,
    TResult? Function(FilterByCategoryEvent value)? filterByCategory,
    TResult? Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult? Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult? Function(FilterByPriceEvent value)? filterByPrice,
  }) {
    return filterByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProductsEvent value)? getAllData,
    TResult Function(GetNextPageEvent value)? getNextPage,
    TResult Function(FilterByCategoryEvent value)? filterByCategory,
    TResult Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult Function(FilterByPriceEvent value)? filterByPrice,
    required TResult orElse(),
  }) {
    if (filterByCategory != null) {
      return filterByCategory(this);
    }
    return orElse();
  }
}

abstract class FilterByCategoryEvent implements ProductEvent {
  factory FilterByCategoryEvent(final String category) =
      _$FilterByCategoryEventImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$FilterByCategoryEventImplCopyWith<_$FilterByCategoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCategoryFromFilterEventImplCopyWith<$Res> {
  factory _$$RemoveCategoryFromFilterEventImplCopyWith(
          _$RemoveCategoryFromFilterEventImpl value,
          $Res Function(_$RemoveCategoryFromFilterEventImpl) then) =
      __$$RemoveCategoryFromFilterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$RemoveCategoryFromFilterEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res,
        _$RemoveCategoryFromFilterEventImpl>
    implements _$$RemoveCategoryFromFilterEventImplCopyWith<$Res> {
  __$$RemoveCategoryFromFilterEventImplCopyWithImpl(
      _$RemoveCategoryFromFilterEventImpl _value,
      $Res Function(_$RemoveCategoryFromFilterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$RemoveCategoryFromFilterEventImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveCategoryFromFilterEventImpl
    implements RemoveCategoryFromFilterEvent {
  _$RemoveCategoryFromFilterEventImpl(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'ProductEvent.removeCategoryFromFilter(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCategoryFromFilterEventImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCategoryFromFilterEventImplCopyWith<
          _$RemoveCategoryFromFilterEventImpl>
      get copyWith => __$$RemoveCategoryFromFilterEventImplCopyWithImpl<
          _$RemoveCategoryFromFilterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllData,
    required TResult Function() getNextPage,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String category) removeCategoryFromFilter,
    required TResult Function(String search) searchByKeyWord,
    required TResult Function(RangeValues rangeValues) filterByPrice,
  }) {
    return removeCategoryFromFilter(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllData,
    TResult? Function()? getNextPage,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String category)? removeCategoryFromFilter,
    TResult? Function(String search)? searchByKeyWord,
    TResult? Function(RangeValues rangeValues)? filterByPrice,
  }) {
    return removeCategoryFromFilter?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllData,
    TResult Function()? getNextPage,
    TResult Function(String category)? filterByCategory,
    TResult Function(String category)? removeCategoryFromFilter,
    TResult Function(String search)? searchByKeyWord,
    TResult Function(RangeValues rangeValues)? filterByPrice,
    required TResult orElse(),
  }) {
    if (removeCategoryFromFilter != null) {
      return removeCategoryFromFilter(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProductsEvent value) getAllData,
    required TResult Function(GetNextPageEvent value) getNextPage,
    required TResult Function(FilterByCategoryEvent value) filterByCategory,
    required TResult Function(RemoveCategoryFromFilterEvent value)
        removeCategoryFromFilter,
    required TResult Function(SearchByKeyWordEvent value) searchByKeyWord,
    required TResult Function(FilterByPriceEvent value) filterByPrice,
  }) {
    return removeCategoryFromFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProductsEvent value)? getAllData,
    TResult? Function(GetNextPageEvent value)? getNextPage,
    TResult? Function(FilterByCategoryEvent value)? filterByCategory,
    TResult? Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult? Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult? Function(FilterByPriceEvent value)? filterByPrice,
  }) {
    return removeCategoryFromFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProductsEvent value)? getAllData,
    TResult Function(GetNextPageEvent value)? getNextPage,
    TResult Function(FilterByCategoryEvent value)? filterByCategory,
    TResult Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult Function(FilterByPriceEvent value)? filterByPrice,
    required TResult orElse(),
  }) {
    if (removeCategoryFromFilter != null) {
      return removeCategoryFromFilter(this);
    }
    return orElse();
  }
}

abstract class RemoveCategoryFromFilterEvent implements ProductEvent {
  factory RemoveCategoryFromFilterEvent(final String category) =
      _$RemoveCategoryFromFilterEventImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$RemoveCategoryFromFilterEventImplCopyWith<
          _$RemoveCategoryFromFilterEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchByKeyWordEventImplCopyWith<$Res> {
  factory _$$SearchByKeyWordEventImplCopyWith(_$SearchByKeyWordEventImpl value,
          $Res Function(_$SearchByKeyWordEventImpl) then) =
      __$$SearchByKeyWordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$SearchByKeyWordEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SearchByKeyWordEventImpl>
    implements _$$SearchByKeyWordEventImplCopyWith<$Res> {
  __$$SearchByKeyWordEventImplCopyWithImpl(_$SearchByKeyWordEventImpl _value,
      $Res Function(_$SearchByKeyWordEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$SearchByKeyWordEventImpl(
      null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchByKeyWordEventImpl implements SearchByKeyWordEvent {
  _$SearchByKeyWordEventImpl(this.search);

  @override
  final String search;

  @override
  String toString() {
    return 'ProductEvent.searchByKeyWord(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchByKeyWordEventImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchByKeyWordEventImplCopyWith<_$SearchByKeyWordEventImpl>
      get copyWith =>
          __$$SearchByKeyWordEventImplCopyWithImpl<_$SearchByKeyWordEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllData,
    required TResult Function() getNextPage,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String category) removeCategoryFromFilter,
    required TResult Function(String search) searchByKeyWord,
    required TResult Function(RangeValues rangeValues) filterByPrice,
  }) {
    return searchByKeyWord(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllData,
    TResult? Function()? getNextPage,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String category)? removeCategoryFromFilter,
    TResult? Function(String search)? searchByKeyWord,
    TResult? Function(RangeValues rangeValues)? filterByPrice,
  }) {
    return searchByKeyWord?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllData,
    TResult Function()? getNextPage,
    TResult Function(String category)? filterByCategory,
    TResult Function(String category)? removeCategoryFromFilter,
    TResult Function(String search)? searchByKeyWord,
    TResult Function(RangeValues rangeValues)? filterByPrice,
    required TResult orElse(),
  }) {
    if (searchByKeyWord != null) {
      return searchByKeyWord(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProductsEvent value) getAllData,
    required TResult Function(GetNextPageEvent value) getNextPage,
    required TResult Function(FilterByCategoryEvent value) filterByCategory,
    required TResult Function(RemoveCategoryFromFilterEvent value)
        removeCategoryFromFilter,
    required TResult Function(SearchByKeyWordEvent value) searchByKeyWord,
    required TResult Function(FilterByPriceEvent value) filterByPrice,
  }) {
    return searchByKeyWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProductsEvent value)? getAllData,
    TResult? Function(GetNextPageEvent value)? getNextPage,
    TResult? Function(FilterByCategoryEvent value)? filterByCategory,
    TResult? Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult? Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult? Function(FilterByPriceEvent value)? filterByPrice,
  }) {
    return searchByKeyWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProductsEvent value)? getAllData,
    TResult Function(GetNextPageEvent value)? getNextPage,
    TResult Function(FilterByCategoryEvent value)? filterByCategory,
    TResult Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult Function(FilterByPriceEvent value)? filterByPrice,
    required TResult orElse(),
  }) {
    if (searchByKeyWord != null) {
      return searchByKeyWord(this);
    }
    return orElse();
  }
}

abstract class SearchByKeyWordEvent implements ProductEvent {
  factory SearchByKeyWordEvent(final String search) =
      _$SearchByKeyWordEventImpl;

  String get search;
  @JsonKey(ignore: true)
  _$$SearchByKeyWordEventImplCopyWith<_$SearchByKeyWordEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterByPriceEventImplCopyWith<$Res> {
  factory _$$FilterByPriceEventImplCopyWith(_$FilterByPriceEventImpl value,
          $Res Function(_$FilterByPriceEventImpl) then) =
      __$$FilterByPriceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RangeValues rangeValues});
}

/// @nodoc
class __$$FilterByPriceEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FilterByPriceEventImpl>
    implements _$$FilterByPriceEventImplCopyWith<$Res> {
  __$$FilterByPriceEventImplCopyWithImpl(_$FilterByPriceEventImpl _value,
      $Res Function(_$FilterByPriceEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rangeValues = null,
  }) {
    return _then(_$FilterByPriceEventImpl(
      null == rangeValues
          ? _value.rangeValues
          : rangeValues // ignore: cast_nullable_to_non_nullable
              as RangeValues,
    ));
  }
}

/// @nodoc

class _$FilterByPriceEventImpl implements FilterByPriceEvent {
  _$FilterByPriceEventImpl(this.rangeValues);

  @override
  final RangeValues rangeValues;

  @override
  String toString() {
    return 'ProductEvent.filterByPrice(rangeValues: $rangeValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByPriceEventImpl &&
            (identical(other.rangeValues, rangeValues) ||
                other.rangeValues == rangeValues));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rangeValues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByPriceEventImplCopyWith<_$FilterByPriceEventImpl> get copyWith =>
      __$$FilterByPriceEventImplCopyWithImpl<_$FilterByPriceEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllData,
    required TResult Function() getNextPage,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String category) removeCategoryFromFilter,
    required TResult Function(String search) searchByKeyWord,
    required TResult Function(RangeValues rangeValues) filterByPrice,
  }) {
    return filterByPrice(rangeValues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllData,
    TResult? Function()? getNextPage,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String category)? removeCategoryFromFilter,
    TResult? Function(String search)? searchByKeyWord,
    TResult? Function(RangeValues rangeValues)? filterByPrice,
  }) {
    return filterByPrice?.call(rangeValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllData,
    TResult Function()? getNextPage,
    TResult Function(String category)? filterByCategory,
    TResult Function(String category)? removeCategoryFromFilter,
    TResult Function(String search)? searchByKeyWord,
    TResult Function(RangeValues rangeValues)? filterByPrice,
    required TResult orElse(),
  }) {
    if (filterByPrice != null) {
      return filterByPrice(rangeValues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProductsEvent value) getAllData,
    required TResult Function(GetNextPageEvent value) getNextPage,
    required TResult Function(FilterByCategoryEvent value) filterByCategory,
    required TResult Function(RemoveCategoryFromFilterEvent value)
        removeCategoryFromFilter,
    required TResult Function(SearchByKeyWordEvent value) searchByKeyWord,
    required TResult Function(FilterByPriceEvent value) filterByPrice,
  }) {
    return filterByPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProductsEvent value)? getAllData,
    TResult? Function(GetNextPageEvent value)? getNextPage,
    TResult? Function(FilterByCategoryEvent value)? filterByCategory,
    TResult? Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult? Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult? Function(FilterByPriceEvent value)? filterByPrice,
  }) {
    return filterByPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProductsEvent value)? getAllData,
    TResult Function(GetNextPageEvent value)? getNextPage,
    TResult Function(FilterByCategoryEvent value)? filterByCategory,
    TResult Function(RemoveCategoryFromFilterEvent value)?
        removeCategoryFromFilter,
    TResult Function(SearchByKeyWordEvent value)? searchByKeyWord,
    TResult Function(FilterByPriceEvent value)? filterByPrice,
    required TResult orElse(),
  }) {
    if (filterByPrice != null) {
      return filterByPrice(this);
    }
    return orElse();
  }
}

abstract class FilterByPriceEvent implements ProductEvent {
  factory FilterByPriceEvent(final RangeValues rangeValues) =
      _$FilterByPriceEventImpl;

  RangeValues get rangeValues;
  @JsonKey(ignore: true)
  _$$FilterByPriceEventImplCopyWith<_$FilterByPriceEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
