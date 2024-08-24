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
  bool get dataIsLoading => throw _privateConstructorUsedError;

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
      {DataResponse<List<ProductEntity>> dataResponse, bool dataIsLoading});

  $DataResponseCopyWith<List<ProductEntity>, $Res> get dataResponse;
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
    Object? dataIsLoading = null,
  }) {
    return _then(_value.copyWith(
      dataResponse: null == dataResponse
          ? _value.dataResponse
          : dataResponse // ignore: cast_nullable_to_non_nullable
              as DataResponse<List<ProductEntity>>,
      dataIsLoading: null == dataIsLoading
          ? _value.dataIsLoading
          : dataIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {DataResponse<List<ProductEntity>> dataResponse, bool dataIsLoading});

  @override
  $DataResponseCopyWith<List<ProductEntity>, $Res> get dataResponse;
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
    Object? dataIsLoading = null,
  }) {
    return _then(_$ProductScreenStateImpl(
      dataResponse: null == dataResponse
          ? _value.dataResponse
          : dataResponse // ignore: cast_nullable_to_non_nullable
              as DataResponse<List<ProductEntity>>,
      dataIsLoading: null == dataIsLoading
          ? _value.dataIsLoading
          : dataIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProductScreenStateImpl implements _ProductScreenState {
  _$ProductScreenStateImpl(
      {required this.dataResponse, this.dataIsLoading = true});

  @override
  final DataResponse<List<ProductEntity>> dataResponse;
  @override
  @JsonKey()
  final bool dataIsLoading;

  @override
  String toString() {
    return 'ProductScreenState(dataResponse: $dataResponse, dataIsLoading: $dataIsLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductScreenStateImpl &&
            (identical(other.dataResponse, dataResponse) ||
                other.dataResponse == dataResponse) &&
            (identical(other.dataIsLoading, dataIsLoading) ||
                other.dataIsLoading == dataIsLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataResponse, dataIsLoading);

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
      final bool dataIsLoading}) = _$ProductScreenStateImpl;

  @override
  DataResponse<List<ProductEntity>> get dataResponse;
  @override
  bool get dataIsLoading;
  @override
  @JsonKey(ignore: true)
  _$$ProductScreenStateImplCopyWith<_$ProductScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
